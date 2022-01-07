; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hash.c_av_hash_final_b64.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hash.c_av_hash_final_b64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVHashContext = type { i32 }

@AV_HASH_MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av_hash_final_b64(%struct.AVHashContext* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.AVHashContext*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.AVHashContext* %0, %struct.AVHashContext** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @AV_HASH_MAX_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @AV_HASH_MAX_SIZE, align 4
  %17 = call i32 @AV_BASE64_SIZE(i32 %16)
  %18 = zext i32 %17 to i64
  %19 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %20 = load %struct.AVHashContext*, %struct.AVHashContext** %4, align 8
  %21 = call i32 @av_hash_get_size(%struct.AVHashContext* %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.AVHashContext*, %struct.AVHashContext** %4, align 8
  %23 = call i32 @av_hash_final(%struct.AVHashContext* %22, i64* %15)
  %24 = mul nuw i64 8, %18
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @av_base64_encode(i64* %19, i32 %25, i64* %15, i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @AV_BASE64_SIZE(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i64*, i64** %5, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @FFMIN(i32 %31, i32 %32)
  %34 = call i32 @memcpy(i64* %30, i64* %19, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %3
  %39 = load i64*, i64** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %38, %3
  %45 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %45)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @AV_BASE64_SIZE(i32) #2

declare dso_local i32 @av_hash_get_size(%struct.AVHashContext*) #2

declare dso_local i32 @av_hash_final(%struct.AVHashContext*, i64*) #2

declare dso_local i32 @av_base64_encode(i64*, i32, i64*, i32) #2

declare dso_local i32 @memcpy(i64*, i64*, i32) #2

declare dso_local i32 @FFMIN(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
