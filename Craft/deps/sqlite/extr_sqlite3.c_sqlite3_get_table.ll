; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqlite3_get_table.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqlite3_get_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i32, i32, i32, i32, i32, i8** }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@sqlite3_get_table_cb = common dso_local global i32 0, align 4
@SQLITE_ABORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_get_table(%struct.TYPE_6__* %0, i8* %1, i8*** %2, i32* %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8***, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__, align 8
  %16 = alloca i8**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8*** %2, i8**** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8** %5, i8*** %13, align 8
  %17 = load i8***, i8**** %10, align 8
  store i8** null, i8*** %17, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32*, i32** %12, align 8
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %20, %6
  %23 = load i32*, i32** %11, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32*, i32** %11, align 8
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i8**, i8*** %13, align 8
  %29 = icmp ne i8** %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i8**, i8*** %13, align 8
  store i8* null, i8** %31, align 8
  br label %32

32:                                               ; preds = %30, %27
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i8* null, i8** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  store i32 1, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  store i32 20, i32* %37, align 4
  %38 = load i32, i32* @SQLITE_OK, align 4
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 5
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 8, %42
  %44 = trunc i64 %43 to i32
  %45 = call i8** @sqlite3_malloc(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 6
  store i8** %45, i8*** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 6
  %48 = load i8**, i8*** %47, align 8
  %49 = icmp eq i8** %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %32
  %51 = load i32, i32* @SQLITE_NOMEM, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %54, i32* %7, align 4
  br label %167

55:                                               ; preds = %32
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 6
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  store i8* null, i8** %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* @sqlite3_get_table_cb, align 4
  %62 = load i8**, i8*** %13, align 8
  %63 = call i32 @sqlite3_exec(%struct.TYPE_6__* %59, i8* %60, i32 %61, %struct.TYPE_7__* %15, i8** %62)
  store i32 %63, i32* %14, align 4
  %64 = call i32 @assert(i32 1)
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @SQLITE_INT_TO_PTR(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 6
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  store i8* %67, i8** %70, align 8
  %71 = load i32, i32* %14, align 4
  %72 = and i32 %71, 255
  %73 = load i32, i32* @SQLITE_ABORT, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %105

75:                                               ; preds = %55
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 6
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 1
  %79 = call i32 @sqlite3_free_table(i8** %78)
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %98

83:                                               ; preds = %75
  %84 = load i8**, i8*** %13, align 8
  %85 = icmp ne i8** %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load i8**, i8*** %13, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @sqlite3_free(i8* %88)
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %91)
  %93 = load i8**, i8*** %13, align 8
  store i8* %92, i8** %93, align 8
  br label %94

94:                                               ; preds = %86, %83
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @sqlite3_free(i8* %96)
  br label %98

98:                                               ; preds = %94, %75
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %7, align 4
  br label %167

105:                                              ; preds = %55
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @sqlite3_free(i8* %107)
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* @SQLITE_OK, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 6
  %114 = load i8**, i8*** %113, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 1
  %116 = call i32 @sqlite3_free_table(i8** %115)
  %117 = load i32, i32* %14, align 4
  store i32 %117, i32* %7, align 4
  br label %167

118:                                              ; preds = %105
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = icmp sgt i32 %120, %122
  br i1 %123, label %124, label %147

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 6
  %126 = load i8**, i8*** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = mul i64 8, %129
  %131 = trunc i64 %130 to i32
  %132 = call i8** @sqlite3_realloc(i8** %126, i32 %131)
  store i8** %132, i8*** %16, align 8
  %133 = load i8**, i8*** %16, align 8
  %134 = icmp eq i8** %133, null
  br i1 %134, label %135, label %144

135:                                              ; preds = %124
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 6
  %137 = load i8**, i8*** %136, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 1
  %139 = call i32 @sqlite3_free_table(i8** %138)
  %140 = load i32, i32* @SQLITE_NOMEM, align 4
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %143, i32* %7, align 4
  br label %167

144:                                              ; preds = %124
  %145 = load i8**, i8*** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 6
  store i8** %145, i8*** %146, align 8
  br label %147

147:                                              ; preds = %144, %118
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 6
  %149 = load i8**, i8*** %148, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 1
  %151 = load i8***, i8**** %10, align 8
  store i8** %150, i8*** %151, align 8
  %152 = load i32*, i32** %12, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %147
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %12, align 8
  store i32 %156, i32* %157, align 4
  br label %158

158:                                              ; preds = %154, %147
  %159 = load i32*, i32** %11, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32*, i32** %11, align 8
  store i32 %163, i32* %164, align 4
  br label %165

165:                                              ; preds = %161, %158
  %166 = load i32, i32* %14, align 4
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %165, %135, %112, %98, %50
  %168 = load i32, i32* %7, align 4
  ret i32 %168
}

declare dso_local i8** @sqlite3_malloc(i32) #1

declare dso_local i32 @sqlite3_exec(%struct.TYPE_6__*, i8*, i32, %struct.TYPE_7__*, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @SQLITE_INT_TO_PTR(i32) #1

declare dso_local i32 @sqlite3_free_table(i8**) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i8** @sqlite3_realloc(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
