; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngwutil.c_png_write_cHRM_fixed.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngwutil.c_png_write_cHRM_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"in png_write_cHRM\00", align 1
@png_cHRM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_cHRM_fixed(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca [32 x i32], align 16
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @png_save_int_32(i32* %7, i32 %10)
  %12 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %13 = getelementptr inbounds i32, i32* %12, i64 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @png_save_int_32(i32* %13, i32 %16)
  %18 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %19 = getelementptr inbounds i32, i32* %18, i64 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @png_save_int_32(i32* %19, i32 %22)
  %24 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %25 = getelementptr inbounds i32, i32* %24, i64 12
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @png_save_int_32(i32* %25, i32 %28)
  %30 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %31 = getelementptr inbounds i32, i32* %30, i64 16
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @png_save_int_32(i32* %31, i32 %34)
  %36 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %37 = getelementptr inbounds i32, i32* %36, i64 20
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @png_save_int_32(i32* %37, i32 %40)
  %42 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %43 = getelementptr inbounds i32, i32* %42, i64 24
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @png_save_int_32(i32* %43, i32 %46)
  %48 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %49 = getelementptr inbounds i32, i32* %48, i64 28
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @png_save_int_32(i32* %49, i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @png_cHRM, align 4
  %56 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %57 = call i32 @png_write_complete_chunk(i32 %54, i32 %55, i32* %56, i32 32)
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_save_int_32(i32*, i32) #1

declare dso_local i32 @png_write_complete_chunk(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
