; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_charFunc.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_charFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @charFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @charFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 %12, 4
  %14 = call i8* @sqlite3_malloc(i32 %13)
  store i8* %14, i8** %7, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @sqlite3_result_error_nomem(i32* %18)
  br label %155

20:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %141, %20
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %144

25:                                               ; preds = %21
  %26 = load i32**, i32*** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @sqlite3_value_int64(i32* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %10, align 4
  %36 = icmp sgt i32 %35, 1114111
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %25
  store i32 65533, i32* %10, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, 2097151
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ult i32 %41, 128
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %44, 255
  %46 = zext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = ptrtoint i8* %47 to i8
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %8, align 8
  store i8 %48, i8* %49, align 1
  br label %140

51:                                               ; preds = %38
  %52 = load i32, i32* %11, align 4
  %53 = icmp ult i32 %52, 2048
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = lshr i32 %55, 6
  %57 = and i32 %56, 31
  %58 = zext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = getelementptr i8, i8* %59, i64 192
  %61 = ptrtoint i8* %60 to i8
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  store i8 %61, i8* %62, align 1
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %64, 63
  %66 = zext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = getelementptr i8, i8* %67, i64 128
  %69 = ptrtoint i8* %68 to i8
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %8, align 8
  store i8 %69, i8* %70, align 1
  br label %139

72:                                               ; preds = %51
  %73 = load i32, i32* %11, align 4
  %74 = icmp ult i32 %73, 65536
  br i1 %74, label %75, label %102

75:                                               ; preds = %72
  %76 = load i32, i32* %11, align 4
  %77 = lshr i32 %76, 12
  %78 = and i32 %77, 15
  %79 = zext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = getelementptr i8, i8* %80, i64 224
  %82 = ptrtoint i8* %81 to i8
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %8, align 8
  store i8 %82, i8* %83, align 1
  %85 = load i32, i32* %11, align 4
  %86 = lshr i32 %85, 6
  %87 = and i32 %86, 63
  %88 = zext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = getelementptr i8, i8* %89, i64 128
  %91 = ptrtoint i8* %90 to i8
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %8, align 8
  store i8 %91, i8* %92, align 1
  %94 = load i32, i32* %11, align 4
  %95 = and i32 %94, 63
  %96 = zext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = getelementptr i8, i8* %97, i64 128
  %99 = ptrtoint i8* %98 to i8
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %8, align 8
  store i8 %99, i8* %100, align 1
  br label %138

102:                                              ; preds = %72
  %103 = load i32, i32* %11, align 4
  %104 = lshr i32 %103, 18
  %105 = and i32 %104, 7
  %106 = zext i32 %105 to i64
  %107 = inttoptr i64 %106 to i8*
  %108 = getelementptr i8, i8* %107, i64 240
  %109 = ptrtoint i8* %108 to i8
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %8, align 8
  store i8 %109, i8* %110, align 1
  %112 = load i32, i32* %11, align 4
  %113 = lshr i32 %112, 12
  %114 = and i32 %113, 63
  %115 = zext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = getelementptr i8, i8* %116, i64 128
  %118 = ptrtoint i8* %117 to i8
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %8, align 8
  store i8 %118, i8* %119, align 1
  %121 = load i32, i32* %11, align 4
  %122 = lshr i32 %121, 6
  %123 = and i32 %122, 63
  %124 = zext i32 %123 to i64
  %125 = inttoptr i64 %124 to i8*
  %126 = getelementptr i8, i8* %125, i64 128
  %127 = ptrtoint i8* %126 to i8
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %8, align 8
  store i8 %127, i8* %128, align 1
  %130 = load i32, i32* %11, align 4
  %131 = and i32 %130, 63
  %132 = zext i32 %131 to i64
  %133 = inttoptr i64 %132 to i8*
  %134 = getelementptr i8, i8* %133, i64 128
  %135 = ptrtoint i8* %134 to i8
  %136 = load i8*, i8** %8, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %8, align 8
  store i8 %135, i8* %136, align 1
  br label %138

138:                                              ; preds = %102, %75
  br label %139

139:                                              ; preds = %138, %54
  br label %140

140:                                              ; preds = %139, %43
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %21

144:                                              ; preds = %21
  %145 = load i32*, i32** %4, align 8
  %146 = load i8*, i8** %7, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = load i8*, i8** %7, align 8
  %149 = ptrtoint i8* %147 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  %152 = trunc i64 %151 to i32
  %153 = load i32, i32* @sqlite3_free, align 4
  %154 = call i32 @sqlite3_result_text(i32* %145, i8* %146, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %144, %17
  ret void
}

declare dso_local i8* @sqlite3_malloc(i32) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @sqlite3_value_int64(i32*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
