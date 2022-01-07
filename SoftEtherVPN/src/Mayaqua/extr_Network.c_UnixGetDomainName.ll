; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_UnixGetDomainName.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_UnixGetDomainName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [17 x i8] c"/etc/resolv.conf\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"domain\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UnixGetDomainName(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = call i32* @ReadDump(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %54
  %16 = load i32*, i32** %7, align 8
  %17 = call i8* @CfgReadNextLine(i32* %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %57

21:                                               ; preds = %15
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @Trim(i8* %22)
  %24 = load i8*, i8** %8, align 8
  %25 = call %struct.TYPE_4__* @ParseToken(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %9, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %54

28:                                               ; preds = %21
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @StrCmpi(i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @StrCpy(i8* %42, i32 %43, i32 %48)
  store i32 1, i32* %6, align 4
  br label %50

50:                                               ; preds = %41, %33
  br label %51

51:                                               ; preds = %50, %28
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %53 = call i32 @FreeToken(%struct.TYPE_4__* %52)
  br label %54

54:                                               ; preds = %51, %21
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @Free(i8* %55)
  br label %15

57:                                               ; preds = %20
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @FreeBuf(i32* %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32* @ReadDump(i8*) #1

declare dso_local i8* @CfgReadNextLine(i32*) #1

declare dso_local i32 @Trim(i8*) #1

declare dso_local %struct.TYPE_4__* @ParseToken(i8*, i8*) #1

declare dso_local i64 @StrCmpi(i32, i8*) #1

declare dso_local i32 @StrCpy(i8*, i32, i32) #1

declare dso_local i32 @FreeToken(%struct.TYPE_4__*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @FreeBuf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
