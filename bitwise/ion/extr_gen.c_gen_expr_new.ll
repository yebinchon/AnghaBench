; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_expr_new.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_expr_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }

@EXPR_NEW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"((%s)generic_alloc((Allocator *)(\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"), \00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"* sizeof(%s), alignof(%s)))\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"((%s)generic_alloc_copy((Allocator *)(\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c" * sizeof(%s), alignof(%s), &(\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c")))\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"sizeof(%s), alignof(%s)))\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"sizeof(%s), alignof(%s), &(\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"((%s)tls_alloc(\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c" * sizeof(%s), alignof(%s)))\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"((%s)alloc_copy(\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"((%s)tls_alloc(sizeof(%s), alignof(%s)))\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"((%s)alloc_copy(sizeof(%s), alignof(%s), &(\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_expr_new(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @EXPR_NEW, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = call %struct.TYPE_10__* @get_resolved_type(%struct.TYPE_11__* %13)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %3, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = call i32 @is_ptr_type(%struct.TYPE_10__* %15)
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = call i8* @type_to_cdecl(%struct.TYPE_10__* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %4, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = call i8* @type_to_cdecl(%struct.TYPE_10__* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %5, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %121

29:                                               ; preds = %1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %82

35:                                               ; preds = %29
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %35
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @gen_expr(i64 %47)
  %49 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @gen_expr(i64 %53)
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %55, i8* %56)
  br label %81

58:                                               ; preds = %35
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @gen_expr(i64 %64)
  %66 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @gen_expr(i64 %70)
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %72, i8* %73)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @gen_expr(i64 %78)
  %80 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %81

81:                                               ; preds = %58, %41
  br label %120

82:                                               ; preds = %29
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %82
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %89)
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @gen_expr(i64 %94)
  %96 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i8*, i8** %5, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %97, i8* %98)
  br label %119

100:                                              ; preds = %82
  %101 = load i8*, i8** %4, align 8
  %102 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %101)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @gen_expr(i64 %106)
  %108 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i8*, i8** %5, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %109, i8* %110, i8* %111)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @gen_expr(i64 %116)
  %118 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %119

119:                                              ; preds = %100, %88
  br label %120

120:                                              ; preds = %119, %81
  br label %186

121:                                              ; preds = %1
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %162

127:                                              ; preds = %121
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %144, label %133

133:                                              ; preds = %127
  %134 = load i8*, i8** %4, align 8
  %135 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %134)
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @gen_expr(i64 %139)
  %141 = load i8*, i8** %5, align 8
  %142 = load i8*, i8** %5, align 8
  %143 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i8* %141, i8* %142)
  br label %161

144:                                              ; preds = %127
  %145 = load i8*, i8** %4, align 8
  %146 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %145)
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @gen_expr(i64 %150)
  %152 = load i8*, i8** %5, align 8
  %153 = load i8*, i8** %5, align 8
  %154 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %152, i8* %153)
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @gen_expr(i64 %158)
  %160 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %161

161:                                              ; preds = %144, %133
  br label %185

162:                                              ; preds = %121
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %162
  %169 = load i8*, i8** %4, align 8
  %170 = load i8*, i8** %5, align 8
  %171 = load i8*, i8** %5, align 8
  %172 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i8* %169, i8* %170, i8* %171)
  br label %184

173:                                              ; preds = %162
  %174 = load i8*, i8** %4, align 8
  %175 = load i8*, i8** %5, align 8
  %176 = load i8*, i8** %5, align 8
  %177 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i8* %174, i8* %175, i8* %176)
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @gen_expr(i64 %181)
  %183 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %184

184:                                              ; preds = %173, %168
  br label %185

185:                                              ; preds = %184, %161
  br label %186

186:                                              ; preds = %185, %120
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_10__* @get_resolved_type(%struct.TYPE_11__*) #1

declare dso_local i32 @is_ptr_type(%struct.TYPE_10__*) #1

declare dso_local i8* @type_to_cdecl(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @genf(i8*, ...) #1

declare dso_local i32 @gen_expr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
