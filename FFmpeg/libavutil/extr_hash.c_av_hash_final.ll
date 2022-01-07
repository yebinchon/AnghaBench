; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hash.c_av_hash_final.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hash.c_av_hash_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@UINT32_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av_hash_final(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %52 [
    i32 140, label %8
    i32 139, label %14
    i32 138, label %20
    i32 137, label %20
    i32 136, label %20
    i32 135, label %20
    i32 134, label %26
    i32 133, label %26
    i32 132, label %26
    i32 129, label %32
    i32 128, label %32
    i32 131, label %32
    i32 130, label %32
    i32 141, label %38
    i32 142, label %46
  ]

8:                                                ; preds = %2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @av_md5_final(i32 %11, i32* %12)
  br label %52

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @av_murmur3_final(i32 %17, i32* %18)
  br label %52

20:                                               ; preds = %2, %2, %2, %2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @av_ripemd_final(i32 %23, i32* %24)
  br label %52

26:                                               ; preds = %2, %2, %2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @av_sha_final(i32 %29, i32* %30)
  br label %52

32:                                               ; preds = %2, %2, %2, %2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @av_sha512_final(i32 %35, i32* %36)
  br label %52

38:                                               ; preds = %2
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @UINT32_MAX, align 4
  %44 = xor i32 %42, %43
  %45 = call i32 @AV_WB32(i32* %39, i32 %44)
  br label %52

46:                                               ; preds = %2
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @AV_WB32(i32* %47, i32 %50)
  br label %52

52:                                               ; preds = %2, %46, %38, %32, %26, %20, %14, %8
  ret void
}

declare dso_local i32 @av_md5_final(i32, i32*) #1

declare dso_local i32 @av_murmur3_final(i32, i32*) #1

declare dso_local i32 @av_ripemd_final(i32, i32*) #1

declare dso_local i32 @av_sha_final(i32, i32*) #1

declare dso_local i32 @av_sha512_final(i32, i32*) #1

declare dso_local i32 @AV_WB32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
