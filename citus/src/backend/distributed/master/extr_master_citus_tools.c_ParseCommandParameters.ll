; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_citus_tools.c_ParseCommandParameters.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_citus_tools.c_ParseCommandParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"expected same number of node name, port, and query string\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**, i32**, i32**, i32*)* @ParseCommandParameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseCommandParameters(i32 %0, i32** %1, i32** %2, i32** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32** %1, i32*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32* %4, i32** %10, align 8
  %30 = call i32* @PG_GETARG_ARRAYTYPE_P(i32 0)
  store i32* %30, i32** %11, align 8
  %31 = call i32* @PG_GETARG_ARRAYTYPE_P(i32 1)
  store i32* %31, i32** %12, align 8
  %32 = call i32* @PG_GETARG_ARRAYTYPE_P(i32 2)
  store i32* %32, i32** %13, align 8
  %33 = call i32 @PG_GETARG_BOOL(i32 3)
  store i32 %33, i32* %14, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @ArrayObjectCount(i32* %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @ArrayObjectCount(i32* %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @ArrayObjectCount(i32* %38)
  store i32 %39, i32* %17, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = call i32* @DeconstructArrayObject(i32* %40)
  store i32* %41, i32** %18, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = call i32* @DeconstructArrayObject(i32* %42)
  store i32* %43, i32** %19, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call i32* @DeconstructArrayObject(i32* %44)
  store i32* %45, i32** %20, align 8
  store i32 0, i32* %21, align 4
  store i32* null, i32** %22, align 8
  store i32* null, i32** %23, align 8
  store i32* null, i32** %24, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %5
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49, %5
  %54 = load i32, i32* @ERROR, align 4
  %55 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %56 = call i32 @errcode(i32 %55)
  %57 = call i32 @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %58 = call i32 @ereport(i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %53, %49
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i8* @palloc0(i32 %63)
  %65 = bitcast i8* %64 to i32*
  store i32* %65, i32** %22, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i8* @palloc0(i32 %69)
  %71 = bitcast i8* %70 to i32*
  store i32* %71, i32** %23, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = call i8* @palloc0(i32 %75)
  %77 = bitcast i8* %76 to i32*
  store i32* %77, i32** %24, align 8
  store i32 0, i32* %21, align 4
  br label %78

78:                                               ; preds = %134, %59
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %137

82:                                               ; preds = %78
  %83 = load i32*, i32** %18, align 8
  %84 = load i32, i32* %21, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32* @DatumGetTextP(i32 %87)
  store i32* %88, i32** %25, align 8
  %89 = load i32*, i32** %25, align 8
  %90 = call i8* @text_to_cstring(i32* %89)
  store i8* %90, i8** %26, align 8
  %91 = load i32*, i32** %19, align 8
  %92 = load i32, i32* %21, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @DatumGetInt32(i32 %95)
  store i32 %96, i32* %27, align 4
  %97 = load i32*, i32** %20, align 8
  %98 = load i32, i32* %21, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32* @DatumGetTextP(i32 %101)
  store i32* %102, i32** %28, align 8
  %103 = load i32*, i32** %28, align 8
  %104 = call i8* @text_to_cstring(i32* %103)
  store i8* %104, i8** %29, align 8
  %105 = call i32 (...) @makeStringInfo()
  %106 = load i32*, i32** %22, align 8
  %107 = load i32, i32* %21, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %105, i32* %109, align 4
  %110 = call i32 (...) @makeStringInfo()
  %111 = load i32*, i32** %24, align 8
  %112 = load i32, i32* %21, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %110, i32* %114, align 4
  %115 = load i32*, i32** %22, align 8
  %116 = load i32, i32* %21, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i8*, i8** %26, align 8
  %121 = call i32 @appendStringInfo(i32 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %120)
  %122 = load i32, i32* %27, align 4
  %123 = load i32*, i32** %23, align 8
  %124 = load i32, i32* %21, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %122, i32* %126, align 4
  %127 = load i32*, i32** %24, align 8
  %128 = load i32, i32* %21, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i8*, i8** %29, align 8
  %133 = call i32 @appendStringInfo(i32 %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %132)
  br label %134

134:                                              ; preds = %82
  %135 = load i32, i32* %21, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %21, align 4
  br label %78

137:                                              ; preds = %78
  %138 = load i32*, i32** %22, align 8
  %139 = load i32**, i32*** %7, align 8
  store i32* %138, i32** %139, align 8
  %140 = load i32*, i32** %23, align 8
  %141 = load i32**, i32*** %8, align 8
  store i32* %140, i32** %141, align 8
  %142 = load i32*, i32** %24, align 8
  %143 = load i32**, i32*** %9, align 8
  store i32* %142, i32** %143, align 8
  %144 = load i32, i32* %14, align 4
  %145 = load i32*, i32** %10, align 8
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* %15, align 4
  ret i32 %146
}

declare dso_local i32* @PG_GETARG_ARRAYTYPE_P(i32) #1

declare dso_local i32 @PG_GETARG_BOOL(i32) #1

declare dso_local i32 @ArrayObjectCount(i32*) #1

declare dso_local i32* @DeconstructArrayObject(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i8* @palloc0(i32) #1

declare dso_local i32* @DatumGetTextP(i32) #1

declare dso_local i8* @text_to_cstring(i32*) #1

declare dso_local i32 @DatumGetInt32(i32) #1

declare dso_local i32 @makeStringInfo(...) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
