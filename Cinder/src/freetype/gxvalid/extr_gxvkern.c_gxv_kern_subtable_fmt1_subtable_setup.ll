; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvkern.c_gxv_kern_subtable_fmt1_subtable_setup.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvkern.c_gxv_kern_subtable_fmt1_subtable_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32*, i32*, i32*, %struct.TYPE_8__*)* @gxv_kern_subtable_fmt1_subtable_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_kern_subtable_fmt1_subtable_setup(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, %struct.TYPE_8__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca [4 x i32], align 16
  %18 = alloca [4 x i32*], align 16
  %19 = alloca [5 x i32], align 16
  %20 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %16, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %20, align 8
  %27 = load i32, i32* %10, align 4
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  store i32 %27, i32* %28, align 16
  %29 = load i32, i32* %11, align 4
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %12, align 4
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  store i32 %31, i32* %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 0
  store i32* %37, i32** %38, align 16
  %39 = load i32*, i32** %14, align 8
  %40 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 1
  store i32* %39, i32** %40, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 2
  store i32* %41, i32** %42, align 16
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 3
  store i32* %44, i32** %45, align 8
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %47 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 0
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 0
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %51 = call i32 @gxv_set_length_by_ushort_offset(i32* %46, i32** %47, i32* %48, i32 4, i32 %49, %struct.TYPE_8__* %50)
  ret void
}

declare dso_local i32 @gxv_set_length_by_ushort_offset(i32*, i32**, i32*, i32, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
