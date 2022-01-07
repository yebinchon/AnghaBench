; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tmd5.c_MD5Final.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tmd5.c_MD5Final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i8**, i64* }

@PADDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MD5Final(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca [16 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 14
  store i32 %12, i32* %13, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 15
  store i32 %18, i32* %19, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 3
  %26 = and i32 %25, 63
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 56
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 56, %30
  br label %35

32:                                               ; preds = %1
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 120, %33
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i32 [ %31, %29 ], [ %34, %32 ]
  store i32 %36, i32* %7, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = load i32, i32* @PADDING, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @MD5Update(%struct.TYPE_4__* %37, i32 %38, i32 %39)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %89, %35
  %42 = load i32, i32* %5, align 4
  %43 = icmp ult i32 %42, 14
  br i1 %43, label %44, label %94

44:                                               ; preds = %41
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 3
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = shl i32 %53, 24
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add i32 %58, 2
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = shl i32 %63, 16
  %65 = or i32 %54, %64
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = add i32 %69, 1
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = shl i32 %74, 8
  %76 = or i32 %65, %75
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = or i32 %76, %84
  %86 = load i32, i32* %5, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %87
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %44
  %90 = load i32, i32* %5, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = add i32 %92, 4
  store i32 %93, i32* %6, align 4
  br label %41

94:                                               ; preds = %41
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %99 = call i32 @Transform(i32* %97, i32* %98)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %174, %94
  %101 = load i32, i32* %5, align 4
  %102 = icmp ult i32 %101, 4
  br i1 %102, label %103, label %179

103:                                              ; preds = %100
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 255
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i8**, i8*** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  store i8* %113, i8** %119, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 %126, 8
  %128 = and i32 %127, 255
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to i8*
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = load i8**, i8*** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = add i32 %134, 1
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %133, i64 %136
  store i8* %130, i8** %137, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = ashr i32 %144, 16
  %146 = and i32 %145, 255
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to i8*
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 2
  %151 = load i8**, i8*** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = add i32 %152, 2
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %151, i64 %154
  store i8* %148, i8** %155, align 8
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = ashr i32 %162, 24
  %164 = and i32 %163, 255
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i8*
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 2
  %169 = load i8**, i8*** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = add i32 %170, 3
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %169, i64 %172
  store i8* %166, i8** %173, align 8
  br label %174

174:                                              ; preds = %103
  %175 = load i32, i32* %5, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %6, align 4
  %178 = add i32 %177, 4
  store i32 %178, i32* %6, align 4
  br label %100

179:                                              ; preds = %100
  ret void
}

declare dso_local i32 @MD5Update(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @Transform(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
