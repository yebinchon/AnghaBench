; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_net.c_NET_GetLocalAddress.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_net.c_NET_GetLocalAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8**, i64, i8**, i32 }

@.str = private unnamed_addr constant [14 x i8] c"Hostname: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Alias: %s\0A\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@numIP = common dso_local global i64 0, align 8
@MAX_IPS = common dso_local global i64 0, align 8
@localIP = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"IP: %i.%i.%i.%i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NET_GetLocalAddress() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca %struct.hostent*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %7 = call i32 @gethostname(i8* %6, i32 256)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %106

10:                                               ; preds = %0
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %12 = call %struct.hostent* @gethostbyname(i8* %11)
  store %struct.hostent* %12, %struct.hostent** %2, align 8
  %13 = load %struct.hostent*, %struct.hostent** %2, align 8
  %14 = icmp ne %struct.hostent* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %106

16:                                               ; preds = %10
  %17 = load %struct.hostent*, %struct.hostent** %2, align 8
  %18 = getelementptr inbounds %struct.hostent, %struct.hostent* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %31, %16
  %22 = load %struct.hostent*, %struct.hostent** %2, align 8
  %23 = getelementptr inbounds %struct.hostent, %struct.hostent* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8*, i8** %24, i64 %27
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %3, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %21

34:                                               ; preds = %21
  %35 = load %struct.hostent*, %struct.hostent** %2, align 8
  %36 = getelementptr inbounds %struct.hostent, %struct.hostent* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AF_INET, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %106

41:                                               ; preds = %34
  store i64 0, i64* @numIP, align 8
  br label %42

42:                                               ; preds = %57, %41
  %43 = load %struct.hostent*, %struct.hostent** %2, align 8
  %44 = getelementptr inbounds %struct.hostent, %struct.hostent* %43, i32 0, i32 2
  %45 = load i8**, i8*** %44, align 8
  %46 = load i64, i64* @numIP, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* @numIP, align 8
  %48 = getelementptr inbounds i8*, i8** %45, i64 %46
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %3, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i64, i64* @numIP, align 8
  %53 = load i64, i64* @MAX_IPS, align 8
  %54 = icmp ult i64 %52, %53
  br label %55

55:                                               ; preds = %51, %42
  %56 = phi i1 [ false, %42 ], [ %54, %51 ]
  br i1 %56, label %57, label %106

57:                                               ; preds = %55
  %58 = load i8*, i8** %3, align 8
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ntohl(i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = load i8**, i8*** @localIP, align 8
  %66 = load i64, i64* @numIP, align 8
  %67 = getelementptr inbounds i8*, i8** %65, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 %64, i8* %69, align 1
  %70 = load i8*, i8** %3, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = load i8**, i8*** @localIP, align 8
  %74 = load i64, i64* @numIP, align 8
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  store i8 %72, i8* %77, align 1
  %78 = load i8*, i8** %3, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  %80 = load i8, i8* %79, align 1
  %81 = load i8**, i8*** @localIP, align 8
  %82 = load i64, i64* @numIP, align 8
  %83 = getelementptr inbounds i8*, i8** %81, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  store i8 %80, i8* %85, align 1
  %86 = load i8*, i8** %3, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 3
  %88 = load i8, i8* %87, align 1
  %89 = load i8**, i8*** @localIP, align 8
  %90 = load i64, i64* @numIP, align 8
  %91 = getelementptr inbounds i8*, i8** %89, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 3
  store i8 %88, i8* %93, align 1
  %94 = load i32, i32* %4, align 4
  %95 = ashr i32 %94, 24
  %96 = and i32 %95, 255
  %97 = load i32, i32* %4, align 4
  %98 = ashr i32 %97, 16
  %99 = and i32 %98, 255
  %100 = load i32, i32* %4, align 4
  %101 = ashr i32 %100, 8
  %102 = and i32 %101, 255
  %103 = load i32, i32* %4, align 4
  %104 = and i32 %103, 255
  %105 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %99, i32 %102, i32 %104)
  br label %42

106:                                              ; preds = %9, %15, %40, %55
  ret void
}

declare dso_local i32 @gethostname(i8*, i32) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
