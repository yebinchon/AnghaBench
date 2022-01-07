; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_channel_volume_slide.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_channel_volume_slide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel*)* @channel_volume_slide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_volume_slide(%struct.channel* %0) #0 {
  %2 = alloca %struct.channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.channel* %0, %struct.channel** %2, align 8
  %5 = load %struct.channel*, %struct.channel** %2, align 8
  %6 = getelementptr inbounds %struct.channel, %struct.channel* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = ashr i32 %7, 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.channel*, %struct.channel** %2, align 8
  %10 = getelementptr inbounds %struct.channel, %struct.channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 15
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 15
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load %struct.channel*, %struct.channel** %2, align 8
  %20 = getelementptr inbounds %struct.channel, %struct.channel* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.channel*, %struct.channel** %2, align 8
  %26 = getelementptr inbounds %struct.channel, %struct.channel* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %23, %18
  br label %72

30:                                               ; preds = %15, %1
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 15
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load %struct.channel*, %struct.channel** %2, align 8
  %38 = getelementptr inbounds %struct.channel, %struct.channel* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.channel*, %struct.channel** %2, align 8
  %44 = getelementptr inbounds %struct.channel, %struct.channel* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %36
  br label %71

48:                                               ; preds = %33, %30
  %49 = load %struct.channel*, %struct.channel** %2, align 8
  %50 = getelementptr inbounds %struct.channel, %struct.channel* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %48
  %54 = load %struct.channel*, %struct.channel** %2, align 8
  %55 = getelementptr inbounds %struct.channel, %struct.channel* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %53, %48
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %4, align 4
  %65 = sub nsw i32 %63, %64
  %66 = load %struct.channel*, %struct.channel** %2, align 8
  %67 = getelementptr inbounds %struct.channel, %struct.channel* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %62, %53
  br label %71

71:                                               ; preds = %70, %47
  br label %72

72:                                               ; preds = %71, %29
  %73 = load %struct.channel*, %struct.channel** %2, align 8
  %74 = getelementptr inbounds %struct.channel, %struct.channel* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %75, 64
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.channel*, %struct.channel** %2, align 8
  %79 = getelementptr inbounds %struct.channel, %struct.channel* %78, i32 0, i32 2
  store i32 64, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %72
  %81 = load %struct.channel*, %struct.channel** %2, align 8
  %82 = getelementptr inbounds %struct.channel, %struct.channel* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.channel*, %struct.channel** %2, align 8
  %87 = getelementptr inbounds %struct.channel, %struct.channel* %86, i32 0, i32 2
  store i32 0, i32* %87, align 8
  br label %88

88:                                               ; preds = %85, %80
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
