; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hash.c_av_hash_final_bin.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hash.c_av_hash_final_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVHashContext = type { i32 }

@AV_HASH_MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av_hash_final_bin(%struct.AVHashContext* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.AVHashContext*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.AVHashContext* %0, %struct.AVHashContext** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @AV_HASH_MAX_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.AVHashContext*, %struct.AVHashContext** %4, align 8
  %15 = call i32 @av_hash_get_size(%struct.AVHashContext* %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.AVHashContext*, %struct.AVHashContext** %4, align 8
  %17 = call i32 @av_hash_final(%struct.AVHashContext* %16, i32* %13)
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @FFMIN(i32 %19, i32 %20)
  %22 = call i32 @memcpy(i32* %18, i32* %13, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sub i32 %31, %32
  %34 = call i32 @memset(i32* %30, i32 0, i32 %33)
  br label %35

35:                                               ; preds = %26, %3
  %36 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %36)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @av_hash_get_size(%struct.AVHashContext*) #2

declare dso_local i32 @av_hash_final(%struct.AVHashContext*, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @FFMIN(i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
