; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_filen.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_filen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_file = type { i8**, i8**, i8**, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i32, i32, i32*, i32*, i32*, i32*, %struct.arg_file*, i32 }

@ARG_HASVALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"<file>\00", align 1
@arg_file_resetfn = common dso_local global i64 0, align 8
@arg_file_scanfn = common dso_local global i64 0, align 8
@arg_file_checkfn = common dso_local global i64 0, align 8
@arg_file_errorfn = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"arg_filen() returns %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.arg_file* @arg_filen(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.arg_file*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* %10, align 4
  br label %23

21:                                               ; preds = %6
  %22 = load i32, i32* %11, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 8, %26
  %28 = add i64 120, %27
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 8, %30
  %32 = add i64 %28, %31
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 8, %34
  %36 = add i64 %32, %35
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %13, align 8
  %38 = call i64 @malloc(i64 %37)
  %39 = inttoptr i64 %38 to %struct.arg_file*
  store %struct.arg_file* %39, %struct.arg_file** %14, align 8
  %40 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %41 = icmp ne %struct.arg_file* %40, null
  br i1 %41, label %42, label %151

42:                                               ; preds = %23
  %43 = load i32, i32* @ARG_HASVALUE, align 4
  %44 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %45 = getelementptr inbounds %struct.arg_file, %struct.arg_file* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 11
  store i32 %43, i32* %46, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %49 = getelementptr inbounds %struct.arg_file, %struct.arg_file* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %53 = getelementptr inbounds %struct.arg_file, %struct.arg_file* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i8* %51, i8** %54, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %57 = getelementptr inbounds %struct.arg_file, %struct.arg_file* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i8* %55, i8** %58, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %42
  %62 = load i8*, i8** %9, align 8
  br label %64

63:                                               ; preds = %42
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i8* [ %62, %61 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %63 ]
  %66 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %67 = getelementptr inbounds %struct.arg_file, %struct.arg_file* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  store i8* %65, i8** %68, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %71 = getelementptr inbounds %struct.arg_file, %struct.arg_file* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  store i32 %69, i32* %72, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %75 = getelementptr inbounds %struct.arg_file, %struct.arg_file* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 5
  store i32 %73, i32* %76, align 4
  %77 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %78 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %79 = getelementptr inbounds %struct.arg_file, %struct.arg_file* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 10
  store %struct.arg_file* %77, %struct.arg_file** %80, align 8
  %81 = load i64, i64* @arg_file_resetfn, align 8
  %82 = inttoptr i64 %81 to i32*
  %83 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %84 = getelementptr inbounds %struct.arg_file, %struct.arg_file* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 9
  store i32* %82, i32** %85, align 8
  %86 = load i64, i64* @arg_file_scanfn, align 8
  %87 = inttoptr i64 %86 to i32*
  %88 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %89 = getelementptr inbounds %struct.arg_file, %struct.arg_file* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 8
  store i32* %87, i32** %90, align 8
  %91 = load i64, i64* @arg_file_checkfn, align 8
  %92 = inttoptr i64 %91 to i32*
  %93 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %94 = getelementptr inbounds %struct.arg_file, %struct.arg_file* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 7
  store i32* %92, i32** %95, align 8
  %96 = load i64, i64* @arg_file_errorfn, align 8
  %97 = inttoptr i64 %96 to i32*
  %98 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %99 = getelementptr inbounds %struct.arg_file, %struct.arg_file* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 6
  store i32* %97, i32** %100, align 8
  %101 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %102 = getelementptr inbounds %struct.arg_file, %struct.arg_file* %101, i64 1
  %103 = bitcast %struct.arg_file* %102 to i8**
  %104 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %105 = getelementptr inbounds %struct.arg_file, %struct.arg_file* %104, i32 0, i32 0
  store i8** %103, i8*** %105, align 8
  %106 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %107 = getelementptr inbounds %struct.arg_file, %struct.arg_file* %106, i32 0, i32 0
  %108 = load i8**, i8*** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %113 = getelementptr inbounds %struct.arg_file, %struct.arg_file* %112, i32 0, i32 1
  store i8** %111, i8*** %113, align 8
  %114 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %115 = getelementptr inbounds %struct.arg_file, %struct.arg_file* %114, i32 0, i32 1
  %116 = load i8**, i8*** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %121 = getelementptr inbounds %struct.arg_file, %struct.arg_file* %120, i32 0, i32 2
  store i8** %119, i8*** %121, align 8
  %122 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %123 = getelementptr inbounds %struct.arg_file, %struct.arg_file* %122, i32 0, i32 3
  store i64 0, i64* %123, align 8
  store i32 0, i32* %15, align 4
  br label %124

124:                                              ; preds = %147, %64
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %150

128:                                              ; preds = %124
  %129 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %130 = getelementptr inbounds %struct.arg_file, %struct.arg_file* %129, i32 0, i32 0
  %131 = load i8**, i8*** %130, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %134, align 8
  %135 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %136 = getelementptr inbounds %struct.arg_file, %struct.arg_file* %135, i32 0, i32 1
  %137 = load i8**, i8*** %136, align 8
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %140, align 8
  %141 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %142 = getelementptr inbounds %struct.arg_file, %struct.arg_file* %141, i32 0, i32 2
  %143 = load i8**, i8*** %142, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %146, align 8
  br label %147

147:                                              ; preds = %128
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %15, align 4
  br label %124

150:                                              ; preds = %124
  br label %151

151:                                              ; preds = %150, %23
  %152 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  %153 = bitcast %struct.arg_file* %152 to i8*
  %154 = call i32 @ARG_TRACE(i8* %153)
  %155 = load %struct.arg_file*, %struct.arg_file** %14, align 8
  ret %struct.arg_file* %155
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @ARG_TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
