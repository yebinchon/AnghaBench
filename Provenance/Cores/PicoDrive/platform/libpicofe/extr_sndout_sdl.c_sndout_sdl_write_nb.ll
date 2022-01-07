; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_sndout_sdl.c_sndout_sdl_write_nb.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_sndout_sdl.c_sndout_sdl_write_nb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf_r = common dso_local global i32 0, align 4
@buf_w = common dso_local global i32 0, align 4
@BUF_MASK = common dso_local global i32 0, align 4
@BUF_LEN = common dso_local global i32 0, align 4
@buf = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sndout_sdl_write_nb(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @buf_r, align 4
  %10 = load i32, i32* @buf_w, align 4
  %11 = sub nsw i32 %9, %10
  %12 = sub nsw i32 %11, 2
  %13 = load i32, i32* @BUF_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @BUF_LEN, align 4
  %16 = load i32, i32* @buf_w, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sdiv i32 %18, 2
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %23, %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %67

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load i64, i64* @buf, align 8
  %36 = load i32, i32* @buf_w, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 %40, 2
  %42 = call i32 @memcpy(i64 %38, i8* %39, i32 %41)
  %43 = load i8*, i8** %4, align 8
  %44 = bitcast i8* %43 to i16*
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i16, i16* %44, i64 %46
  %48 = bitcast i16* %47 to i8*
  store i8* %48, i8** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %5, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %5, align 4
  store i32 0, i32* @buf_w, align 4
  br label %52

52:                                               ; preds = %34, %29
  %53 = load i64, i64* @buf, align 8
  %54 = load i32, i32* @buf_w, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = mul nsw i32 %58, 2
  %60 = call i32 @memcpy(i64 %56, i8* %57, i32 %59)
  %61 = load i32, i32* @buf_w, align 4
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* @BUF_MASK, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* @buf_w, align 4
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %52, %28
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
