; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_cast5.c_decipher.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_cast5.c_decipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32*, i32*)* @decipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decipher(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @AV_RB32(i32* %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 4
  %17 = call i32 @AV_RB32(i32* %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 16
  br i1 %21, label %22, label %35

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @F1(i32 %23, i32 %24, i32 16)
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @F3(i32 %26, i32 %27, i32 15)
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @F2(i32 %29, i32 %30, i32 14)
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @F1(i32 %32, i32 %33, i32 13)
  br label %35

35:                                               ; preds = %22, %4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @F3(i32 %36, i32 %37, i32 12)
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @F2(i32 %39, i32 %40, i32 11)
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @F1(i32 %42, i32 %43, i32 10)
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @F3(i32 %45, i32 %46, i32 9)
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @F2(i32 %48, i32 %49, i32 8)
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @F1(i32 %51, i32 %52, i32 7)
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @F3(i32 %54, i32 %55, i32 6)
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @F2(i32 %57, i32 %58, i32 5)
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @F1(i32 %60, i32 %61, i32 4)
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @F3(i32 %63, i32 %64, i32 3)
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @F2(i32 %66, i32 %67, i32 2)
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @F1(i32 %69, i32 %70, i32 1)
  %72 = load i32*, i32** %8, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %35
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @AV_RB32(i32* %75)
  %77 = load i32, i32* %11, align 4
  %78 = xor i32 %77, %76
  store i32 %78, i32* %11, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  %81 = call i32 @AV_RB32(i32* %80)
  %82 = load i32, i32* %12, align 4
  %83 = xor i32 %82, %81
  store i32 %83, i32* %12, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @memcpy(i32* %84, i32* %85, i32 8)
  br label %87

87:                                               ; preds = %74, %35
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @AV_WB32(i32* %88, i32 %89)
  %91 = load i32*, i32** %6, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @AV_WB32(i32* %92, i32 %93)
  ret void
}

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @F1(i32, i32, i32) #1

declare dso_local i32 @F3(i32, i32, i32) #1

declare dso_local i32 @F2(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @AV_WB32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
