; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_xenv.c_x11h_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_xenv.c_x11h_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i32*, i32)*, i32, i32 (i32, i32, %struct.TYPE_9__*)*, i32 (i32, %struct.TYPE_9__*)*, i64 (i32)* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@g_xstuff = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (i8*, i32, i32)*, i32 (i8*, i32, i32, i32, i32)*, i32 (i8*, i32, i32)*, i8*)* @x11h_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x11h_update(i32 (i8*, i32, i32)* %0, i32 (i8*, i32, i32, i32, i32)* %1, i32 (i8*, i32, i32)* %2, i8* %3) #0 {
  %5 = alloca i32 (i8*, i32, i32)*, align 8
  %6 = alloca i32 (i8*, i32, i32, i32, i32)*, align 8
  %7 = alloca i32 (i8*, i32, i32)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__, align 4
  %10 = alloca i32, align 4
  store i32 (i8*, i32, i32)* %0, i32 (i8*, i32, i32)** %5, align 8
  store i32 (i8*, i32, i32, i32, i32)* %1, i32 (i8*, i32, i32, i32, i32)** %6, align 8
  store i32 (i8*, i32, i32)* %2, i32 (i8*, i32, i32)** %7, align 8
  store i8* %3, i8** %8, align 8
  br label %11

11:                                               ; preds = %102, %4
  %12 = load i64 (i32)*, i64 (i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_xstuff, i32 0, i32 4), align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_xstuff, i32 0, i32 1), align 8
  %14 = call i64 %12(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %103

16:                                               ; preds = %11
  %17 = load i32 (i32, %struct.TYPE_9__*)*, i32 (i32, %struct.TYPE_9__*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_xstuff, i32 0, i32 3), align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_xstuff, i32 0, i32 1), align 8
  %19 = call i32 %17(i32 %18, %struct.TYPE_9__* %9)
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %102 [
    i32 131, label %22
    i32 130, label %30
    i32 129, label %42
    i32 133, label %54
    i32 132, label %71
    i32 128, label %88
  ]

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %28, %22
  %24 = load i32 (i32, i32, %struct.TYPE_9__*)*, i32 (i32, i32, %struct.TYPE_9__*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_xstuff, i32 0, i32 2), align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_xstuff, i32 0, i32 1), align 8
  %26 = call i32 %24(i32 %25, i32 131, %struct.TYPE_9__* %9)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %23

29:                                               ; preds = %23
  br label %102

30:                                               ; preds = %16
  %31 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_xstuff, i32 0, i32 0), align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 3
  %33 = call i32 %31(i32* %32, i32 0)
  store i32 %33, i32* %10, align 4
  %34 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %5, align 8
  %35 = icmp ne i32 (i8*, i32, i32)* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %5, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 %37(i8* %38, i32 %39, i32 1)
  br label %41

41:                                               ; preds = %36, %30
  br label %102

42:                                               ; preds = %16
  %43 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_xstuff, i32 0, i32 0), align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 3
  %45 = call i32 %43(i32* %44, i32 0)
  store i32 %45, i32* %10, align 4
  %46 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %5, align 8
  %47 = icmp ne i32 (i8*, i32, i32)* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %5, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 %49(i8* %50, i32 %51, i32 0)
  br label %53

53:                                               ; preds = %48, %42
  br label %102

54:                                               ; preds = %16
  %55 = load i32 (i8*, i32, i32, i32, i32)*, i32 (i8*, i32, i32, i32, i32)** %6, align 8
  %56 = icmp ne i32 (i8*, i32, i32, i32, i32)* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = load i32 (i8*, i32, i32, i32, i32)*, i32 (i8*, i32, i32, i32, i32)** %6, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 %58(i8* %59, i32 %62, i32 %65, i32 %68, i32 1)
  br label %70

70:                                               ; preds = %57, %54
  br label %102

71:                                               ; preds = %16
  %72 = load i32 (i8*, i32, i32, i32, i32)*, i32 (i8*, i32, i32, i32, i32)** %6, align 8
  %73 = icmp ne i32 (i8*, i32, i32, i32, i32)* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load i32 (i8*, i32, i32, i32, i32)*, i32 (i8*, i32, i32, i32, i32)** %6, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 %75(i8* %76, i32 %79, i32 %82, i32 %85, i32 0)
  br label %87

87:                                               ; preds = %74, %71
  br label %102

88:                                               ; preds = %16
  %89 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %7, align 8
  %90 = icmp ne i32 (i8*, i32, i32)* %89, null
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %7, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 %92(i8* %93, i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %91, %88
  br label %102

102:                                              ; preds = %16, %101, %87, %70, %53, %41, %29
  br label %11

103:                                              ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
