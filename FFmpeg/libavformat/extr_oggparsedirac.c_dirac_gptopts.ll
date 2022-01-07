; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsedirac.c_dirac_gptopts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsedirac.c_dirac_gptopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.ogg* }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i32 }

@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32*)* @dirac_gptopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dirac_gptopts(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ogg*, align 8
  %11 = alloca %struct.ogg_stream*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.ogg*, %struct.ogg** %17, align 8
  store %struct.ogg* %18, %struct.ogg** %10, align 8
  %19 = load %struct.ogg*, %struct.ogg** %10, align 8
  %20 = getelementptr inbounds %struct.ogg, %struct.ogg* %19, i32 0, i32 0
  %21 = load %struct.ogg_stream*, %struct.ogg_stream** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %21, i64 %23
  store %struct.ogg_stream* %24, %struct.ogg_stream** %11, align 8
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 14
  %27 = and i32 %26, 65280
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 255
  %30 = or i32 %27, %29
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  %32 = ashr i32 %31, 31
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %9, align 4
  %35 = ashr i32 %34, 9
  %36 = and i32 %35, 8191
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %4
  %41 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %42 = load %struct.ogg_stream*, %struct.ogg_stream** %11, align 8
  %43 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %4
  %47 = load i32*, i32** %8, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %13, align 4
  %51 = load i32*, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %14, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
