; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_walIteratorInit.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_walIteratorInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32*, i64* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@HASHTABLE_NPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, %struct.TYPE_12__**)* @walIteratorInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walIteratorInit(%struct.TYPE_13__* %0, i32 %1, %struct.TYPE_12__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_12__** %2, %struct.TYPE_12__*** %7, align 8
  %21 = load i32, i32* @SQLITE_OK, align 4
  store i32 %21, i32* %14, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br label %32

32:                                               ; preds = %26, %3
  %33 = phi i1 [ false, %3 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @walFramePage(i32 %41)
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = add i64 16, %47
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 8
  %52 = add i64 %48, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @sqlite3_malloc64(i32 %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %8, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %58 = icmp ne %struct.TYPE_12__* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %32
  %60 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %60, i32* %4, align 4
  br label %210

61:                                               ; preds = %32
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @memset(%struct.TYPE_12__* %62, i32 0, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @HASHTABLE_NPAGE, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @HASHTABLE_NPAGE, align 4
  br label %75

73:                                               ; preds = %61
  %74 = load i32, i32* %10, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = sext i32 %76 to i64
  %78 = mul i64 8, %77
  %79 = trunc i64 %78 to i32
  %80 = call i64 @sqlite3_malloc64(i32 %79)
  %81 = inttoptr i64 %80 to i64*
  store i64* %81, i64** %13, align 8
  %82 = load i64*, i64** %13, align 8
  %83 = icmp ne i64* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %75
  %85 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %84, %75
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  %89 = call i32 @walFramePage(i32 %88)
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %194, %86
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @SQLITE_OK, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %95, %96
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i1 [ false, %90 ], [ %97, %94 ]
  br i1 %99, label %100, label %197

100:                                              ; preds = %98
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @walHashGet(%struct.TYPE_13__* %101, i32 %102, i64** %15, i32** %17, i32* %16)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* @SQLITE_OK, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %193

107:                                              ; preds = %100
  %108 = load i32*, i32** %17, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %17, align 8
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  %112 = load i32, i32* %9, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %16, align 4
  %117 = sub nsw i32 %115, %116
  store i32 %117, i32* %19, align 4
  br label %127

118:                                              ; preds = %107
  %119 = load i64*, i64** %15, align 8
  %120 = bitcast i64* %119 to i32*
  %121 = load i32*, i32** %17, align 8
  %122 = ptrtoint i32* %120 to i64
  %123 = ptrtoint i32* %121 to i64
  %124 = sub i64 %122, %123
  %125 = sdiv exact i64 %124, 4
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %19, align 4
  br label %127

127:                                              ; preds = %118, %114
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i64 %134
  %136 = bitcast %struct.TYPE_11__* %135 to i64*
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  store i64* %139, i64** %20, align 8
  %140 = load i32, i32* %16, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %142

142:                                              ; preds = %153, %127
  %143 = load i32, i32* %18, align 4
  %144 = load i32, i32* %19, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %142
  %147 = load i32, i32* %18, align 4
  %148 = sext i32 %147 to i64
  %149 = load i64*, i64** %20, align 8
  %150 = load i32, i32* %18, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  store i64 %148, i64* %152, align 8
  br label %153

153:                                              ; preds = %146
  %154 = load i32, i32* %18, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %18, align 4
  br label %142

156:                                              ; preds = %142
  %157 = load i32*, i32** %17, align 8
  %158 = load i64*, i64** %13, align 8
  %159 = load i64*, i64** %20, align 8
  %160 = call i32 @walMergesort(i32* %157, i64* %158, i64* %159, i32* %19)
  %161 = load i32, i32* %16, align 4
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  store i32 %161, i32* %168, align 8
  %169 = load i32, i32* %19, align 4
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %171, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  store i32 %169, i32* %176, align 4
  %177 = load i64*, i64** %20, align 8
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %179, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 3
  store i64* %177, i64** %184, align 8
  %185 = load i32*, i32** %17, align 8
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %187, align 8
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 2
  store i32* %185, i32** %192, align 8
  br label %193

193:                                              ; preds = %156, %100
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %12, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %12, align 4
  br label %90

197:                                              ; preds = %98
  %198 = load i64*, i64** %13, align 8
  %199 = call i32 @sqlite3_free(i64* %198)
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* @SQLITE_OK, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %205 = call i32 @walIteratorFree(%struct.TYPE_12__* %204)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  br label %206

206:                                              ; preds = %203, %197
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %208 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %207, %struct.TYPE_12__** %208, align 8
  %209 = load i32, i32* %14, align 4
  store i32 %209, i32* %4, align 4
  br label %210

210:                                              ; preds = %206, %59
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @walFramePage(i32) #1

declare dso_local i64 @sqlite3_malloc64(i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @walHashGet(%struct.TYPE_13__*, i32, i64**, i32**, i32*) #1

declare dso_local i32 @walMergesort(i32*, i64*, i64*, i32*) #1

declare dso_local i32 @sqlite3_free(i64*) #1

declare dso_local i32 @walIteratorFree(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
