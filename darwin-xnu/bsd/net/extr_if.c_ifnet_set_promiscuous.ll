; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifnet_set_promiscuous.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifnet_set_promiscuous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s: promiscuous mode %s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" failed\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" succeeded\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_set_promiscuous(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = call i32 @ifnet_lock_exclusive(%struct.TYPE_8__* %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 -1
  %17 = sext i32 %16 to i64
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, %17
  store i64 %21, i64* %19, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load i32, i32* @IFF_PROMISC, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %39

32:                                               ; preds = %2
  %33 = load i32, i32* @IFF_PROMISC, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %32, %26
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %7, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = call i32 @ifnet_lock_done(%struct.TYPE_8__* %43)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %95

48:                                               ; preds = %39
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @IFF_UP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %95

53:                                               ; preds = %48
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = load i32, i32* @SIOCSIFFLAGS, align 4
  %56 = call i32 @ifnet_ioctl(%struct.TYPE_8__* %54, i32 0, i32 %55, i32* null)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = call i32 @rt_ifmsg(%struct.TYPE_8__* %60)
  br label %94

62:                                               ; preds = %53
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = call i32 @ifnet_lock_exclusive(%struct.TYPE_8__* %63)
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 -1
  %69 = sext i32 %68 to i64
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %62
  %79 = load i32, i32* @IFF_PROMISC, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %91

84:                                               ; preds = %62
  %85 = load i32, i32* @IFF_PROMISC, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %84, %78
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = call i32 @ifnet_lock_done(%struct.TYPE_8__* %92)
  br label %94

94:                                               ; preds = %91, %59
  br label %95

95:                                               ; preds = %94, %48, %39
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %95
  %100 = load i32, i32* @LOG_INFO, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %102 = call i32 @if_name(%struct.TYPE_8__* %101)
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @IFF_PROMISC, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)
  %113 = call i32 @log(i32 %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %102, i8* %108, i8* %112)
  br label %114

114:                                              ; preds = %99, %95
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @ifnet_lock_exclusive(%struct.TYPE_8__*) #1

declare dso_local i32 @ifnet_lock_done(%struct.TYPE_8__*) #1

declare dso_local i32 @ifnet_ioctl(%struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @rt_ifmsg(%struct.TYPE_8__*) #1

declare dso_local i32 @log(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @if_name(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
