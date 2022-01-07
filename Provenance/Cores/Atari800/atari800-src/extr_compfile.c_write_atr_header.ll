; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_compfile.c_write_atr_header.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_compfile.c_write_atr_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.AFILE_ATR_Header = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@AFILE_ATR_MAGIC1 = common dso_local global i32 0, align 4
@AFILE_ATR_MAGIC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @write_atr_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_atr_header(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.AFILE_ATR_Header, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 256
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = icmp sle i32 %16, 3
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %1
  %19 = load i32, i32* %3, align 4
  %20 = shl i32 %19, 3
  br label %25

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = shl i32 %22, 4
  %24 = sub nsw i32 %23, 24
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i32 [ %20, %18 ], [ %24, %21 ]
  store i32 %26, i32* %5, align 4
  %27 = call i32 @memset(%struct.AFILE_ATR_Header* %6, i32 0, i32 56)
  %28 = load i32, i32* @AFILE_ATR_MAGIC1, align 4
  %29 = getelementptr inbounds %struct.AFILE_ATR_Header, %struct.AFILE_ATR_Header* %6, i32 0, i32 7
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @AFILE_ATR_MAGIC2, align 4
  %31 = getelementptr inbounds %struct.AFILE_ATR_Header, %struct.AFILE_ATR_Header* %6, i32 0, i32 6
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = getelementptr inbounds %struct.AFILE_ATR_Header, %struct.AFILE_ATR_Header* %6, i32 0, i32 5
  store i8* %34, i8** %35, align 8
  %36 = load i32, i32* %4, align 4
  %37 = ashr i32 %36, 8
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = getelementptr inbounds %struct.AFILE_ATR_Header, %struct.AFILE_ATR_Header* %6, i32 0, i32 4
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = getelementptr inbounds %struct.AFILE_ATR_Header, %struct.AFILE_ATR_Header* %6, i32 0, i32 3
  store i8* %43, i8** %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = ashr i32 %45, 8
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = getelementptr inbounds %struct.AFILE_ATR_Header, %struct.AFILE_ATR_Header* %6, i32 0, i32 2
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = ashr i32 %50, 16
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = getelementptr inbounds %struct.AFILE_ATR_Header, %struct.AFILE_ATR_Header* %6, i32 0, i32 1
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* %5, align 4
  %56 = ashr i32 %55, 24
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = getelementptr inbounds %struct.AFILE_ATR_Header, %struct.AFILE_ATR_Header* %6, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @fsave(%struct.AFILE_ATR_Header* %6, i32 56, i32 %62)
  ret i32 %63
}

declare dso_local i32 @memset(%struct.AFILE_ATR_Header*, i32, i32) #1

declare dso_local i32 @fsave(%struct.AFILE_ATR_Header*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
