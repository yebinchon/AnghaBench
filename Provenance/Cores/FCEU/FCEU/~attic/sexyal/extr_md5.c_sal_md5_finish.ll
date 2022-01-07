; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/sexyal/extr_md5.c_sal_md5_finish.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/sexyal/extr_md5.c_sal_md5_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sal_md5_context = type { i32*, i32* }

@md5_padding = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sal_md5_finish(%struct.sal_md5_context* %0, i32* %1) #0 {
  %3 = alloca %struct.sal_md5_context*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  store %struct.sal_md5_context* %0, %struct.sal_md5_context** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.sal_md5_context*, %struct.sal_md5_context** %3, align 8
  %9 = getelementptr inbounds %struct.sal_md5_context, %struct.sal_md5_context* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %14 = call i32 @PUT_UINT32(i32 %12, i32* %13, i32 0)
  %15 = load %struct.sal_md5_context*, %struct.sal_md5_context** %3, align 8
  %16 = getelementptr inbounds %struct.sal_md5_context, %struct.sal_md5_context* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %21 = call i32 @PUT_UINT32(i32 %19, i32* %20, i32 4)
  %22 = load %struct.sal_md5_context*, %struct.sal_md5_context** %3, align 8
  %23 = getelementptr inbounds %struct.sal_md5_context, %struct.sal_md5_context* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 3
  %28 = and i32 %27, 63
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 56
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 56, %32
  br label %37

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 120, %35
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i32 [ %33, %31 ], [ %36, %34 ]
  store i32 %38, i32* %6, align 4
  %39 = load %struct.sal_md5_context*, %struct.sal_md5_context** %3, align 8
  %40 = load i32*, i32** @md5_padding, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @sal_md5_update(%struct.sal_md5_context* %39, i32* %40, i32 %41)
  %43 = load %struct.sal_md5_context*, %struct.sal_md5_context** %3, align 8
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %45 = call i32 @sal_md5_update(%struct.sal_md5_context* %43, i32* %44, i32 8)
  %46 = load %struct.sal_md5_context*, %struct.sal_md5_context** %3, align 8
  %47 = getelementptr inbounds %struct.sal_md5_context, %struct.sal_md5_context* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @PUT_UINT32(i32 %50, i32* %51, i32 0)
  %53 = load %struct.sal_md5_context*, %struct.sal_md5_context** %3, align 8
  %54 = getelementptr inbounds %struct.sal_md5_context, %struct.sal_md5_context* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @PUT_UINT32(i32 %57, i32* %58, i32 4)
  %60 = load %struct.sal_md5_context*, %struct.sal_md5_context** %3, align 8
  %61 = getelementptr inbounds %struct.sal_md5_context, %struct.sal_md5_context* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @PUT_UINT32(i32 %64, i32* %65, i32 8)
  %67 = load %struct.sal_md5_context*, %struct.sal_md5_context** %3, align 8
  %68 = getelementptr inbounds %struct.sal_md5_context, %struct.sal_md5_context* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @PUT_UINT32(i32 %71, i32* %72, i32 12)
  ret void
}

declare dso_local i32 @PUT_UINT32(i32, i32*, i32) #1

declare dso_local i32 @sal_md5_update(%struct.sal_md5_context*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
