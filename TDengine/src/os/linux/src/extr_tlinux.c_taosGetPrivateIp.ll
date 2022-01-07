; ModuleID = '/home/carl/AnghaBench/TDengine/src/os/linux/src/extr_tlinux.c_taosGetPrivateIp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/os/linux/src/extr_tlinux.c_taosGetPrivateIp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { %struct.TYPE_2__*, i32, %struct.ifaddrs* }
%struct.TYPE_2__ = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"no net card was found, use lo:127.0.0.1 as default\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosGetPrivateIp(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifaddrs*, align 8
  %6 = alloca %struct.ifaddrs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %13 = load i32, i32* @NI_MAXHOST, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = call i32 @getifaddrs(%struct.ifaddrs** %5)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %87

20:                                               ; preds = %1
  store i32 0, i32* %12, align 4
  %21 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  store %struct.ifaddrs* %21, %struct.ifaddrs** %6, align 8
  br label %22

22:                                               ; preds = %69, %20
  %23 = load %struct.ifaddrs*, %struct.ifaddrs** %6, align 8
  %24 = icmp ne %struct.ifaddrs* %23, null
  br i1 %24, label %25, label %73

25:                                               ; preds = %22
  %26 = load %struct.ifaddrs*, %struct.ifaddrs** %6, align 8
  %27 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp eq %struct.TYPE_2__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %69

31:                                               ; preds = %25
  %32 = load %struct.ifaddrs*, %struct.ifaddrs** %6, align 8
  %33 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load %struct.ifaddrs*, %struct.ifaddrs** %6, align 8
  %38 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %69

43:                                               ; preds = %31
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @AF_INET, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %43
  %48 = load %struct.ifaddrs*, %struct.ifaddrs** %6, align 8
  %49 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @AF_INET, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i64 4, i64 4
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @NI_MAXHOST, align 4
  %58 = load i32, i32* @NI_NUMERICHOST, align 4
  %59 = call i32 @getnameinfo(%struct.TYPE_2__* %50, i32 %56, i8* %16, i32 %57, i32* null, i32 0, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %47
  %63 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %64 = call i32 @freeifaddrs(%struct.ifaddrs* %63)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %87

65:                                               ; preds = %47
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @strcpy(i8* %66, i8* %16)
  store i32 1, i32* %12, align 4
  br label %73

68:                                               ; preds = %43
  br label %69

69:                                               ; preds = %68, %42, %30
  %70 = load %struct.ifaddrs*, %struct.ifaddrs** %6, align 8
  %71 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %70, i32 0, i32 2
  %72 = load %struct.ifaddrs*, %struct.ifaddrs** %71, align 8
  store %struct.ifaddrs* %72, %struct.ifaddrs** %6, align 8
  br label %22

73:                                               ; preds = %65, %22
  %74 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %75 = call i32 @freeifaddrs(%struct.ifaddrs* %74)
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %87

79:                                               ; preds = %73
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = call i32 @pPrint(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i8*, i8** %3, align 8
  %85 = call i32 @strcpy(i8* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %87

86:                                               ; preds = %79
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %87

87:                                               ; preds = %86, %82, %78, %62, %19
  %88 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getifaddrs(%struct.ifaddrs**) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @getnameinfo(%struct.TYPE_2__*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @pPrint(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
