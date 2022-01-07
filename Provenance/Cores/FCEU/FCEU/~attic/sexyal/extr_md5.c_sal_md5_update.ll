; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/sexyal/extr_md5.c_sal_md5_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/sexyal/extr_md5.c_sal_md5_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sal_md5_context = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sal_md5_update(%struct.sal_md5_context* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.sal_md5_context*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sal_md5_context* %0, %struct.sal_md5_context** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %115

12:                                               ; preds = %3
  %13 = load %struct.sal_md5_context*, %struct.sal_md5_context** %4, align 8
  %14 = getelementptr inbounds %struct.sal_md5_context, %struct.sal_md5_context* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 3
  %19 = and i32 %18, 63
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 64, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 %22, 3
  %24 = load %struct.sal_md5_context*, %struct.sal_md5_context** %4, align 8
  %25 = getelementptr inbounds %struct.sal_md5_context, %struct.sal_md5_context* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, %23
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %30, 29
  %32 = load %struct.sal_md5_context*, %struct.sal_md5_context** %4, align 8
  %33 = getelementptr inbounds %struct.sal_md5_context, %struct.sal_md5_context* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %31
  store i32 %37, i32* %35, align 4
  %38 = load %struct.sal_md5_context*, %struct.sal_md5_context** %4, align 8
  %39 = getelementptr inbounds %struct.sal_md5_context, %struct.sal_md5_context* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %41, align 4
  %43 = load %struct.sal_md5_context*, %struct.sal_md5_context** %4, align 8
  %44 = getelementptr inbounds %struct.sal_md5_context, %struct.sal_md5_context* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = shl i32 %48, 3
  %50 = icmp slt i32 %47, %49
  %51 = zext i1 %50 to i32
  %52 = load %struct.sal_md5_context*, %struct.sal_md5_context** %4, align 8
  %53 = getelementptr inbounds %struct.sal_md5_context, %struct.sal_md5_context* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %51
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %88

60:                                               ; preds = %12
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %60
  %65 = load %struct.sal_md5_context*, %struct.sal_md5_context** %4, align 8
  %66 = getelementptr inbounds %struct.sal_md5_context, %struct.sal_md5_context* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = bitcast i32* %70 to i8*
  %72 = load i32*, i32** %5, align 8
  %73 = bitcast i32* %72 to i8*
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @memcpy(i8* %71, i8* %73, i32 %74)
  %76 = load %struct.sal_md5_context*, %struct.sal_md5_context** %4, align 8
  %77 = load %struct.sal_md5_context*, %struct.sal_md5_context** %4, align 8
  %78 = getelementptr inbounds %struct.sal_md5_context, %struct.sal_md5_context* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @sal_md5_process(%struct.sal_md5_context* %76, i32* %79)
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %5, align 8
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %64, %60, %12
  br label %89

89:                                               ; preds = %92, %88
  %90 = load i32, i32* %6, align 4
  %91 = icmp sge i32 %90, 64
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load %struct.sal_md5_context*, %struct.sal_md5_context** %4, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @sal_md5_process(%struct.sal_md5_context* %93, i32* %94)
  %96 = load i32, i32* %6, align 4
  %97 = sub nsw i32 %96, 64
  store i32 %97, i32* %6, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 64
  store i32* %99, i32** %5, align 8
  br label %89

100:                                              ; preds = %89
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %100
  %104 = load %struct.sal_md5_context*, %struct.sal_md5_context** %4, align 8
  %105 = getelementptr inbounds %struct.sal_md5_context, %struct.sal_md5_context* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = bitcast i32* %109 to i8*
  %111 = load i32*, i32** %5, align 8
  %112 = bitcast i32* %111 to i8*
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @memcpy(i8* %110, i8* %112, i32 %113)
  br label %115

115:                                              ; preds = %11, %103, %100
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sal_md5_process(%struct.sal_md5_context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
