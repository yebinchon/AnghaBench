; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_function.c_GetDistributionArgIndex.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_function.c_GetDistributionArgIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i32 0, align 4
@PROCOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for function %u\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [81 x i8] c"cannot distribute the function \22%s\22 since the distribution argument is not valid\00", align 1
@.str.3 = private unnamed_addr constant [104 x i8] c"Either provide a valid function argument name or a valid \22$paramIndex\22 to create_distributed_function()\00", align 1
@NAMEDATALEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [82 x i8] c"cannot distribute the function \22%s\22 since the distribution argument is not valid \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*)* @GetDistributionArgIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetDistributionArgIndex(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i8** null, i8*** %12, align 8
  store i8* null, i8** %13, align 8
  store i32* null, i32** %14, align 8
  %18 = load i32, i32* @InvalidOid, align 4
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @PROCOID, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ObjectIdGetDatum(i32 %21)
  %23 = call i32* @SearchSysCache1(i32 %20, i32 %22)
  store i32* %23, i32** %14, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = call i32 @HeapTupleIsValid(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @elog(i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %3
  %32 = load i32*, i32** %14, align 8
  %33 = call i32 @get_func_arg_info(i32* %32, i32** %11, i8*** %12, i8** %13)
  store i32 %33, i32* %9, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @argumentStartsWith(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %76

37:                                               ; preds = %31
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @pg_atoi(i8* %40, i32 4, i32 0)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44, %37
  %49 = load i32, i32* %5, align 4
  %50 = call i8* @get_func_name(i32 %49)
  store i8* %50, i8** %15, align 8
  %51 = load i32, i32* @ERROR, align 4
  %52 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %53 = call i32 @errcode(i32 %52)
  %54 = load i8*, i8** %15, align 8
  %55 = call i32 @errmsg(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = call i32 @errhint(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0))
  %57 = call i32 @ereport(i32 %51, i32 %56)
  br label %58

58:                                               ; preds = %48, %44
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** %14, align 8
  %68 = call i32 @ReleaseSysCache(i32* %67)
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @InvalidOid, align 4
  %72 = icmp ne i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @Assert(i32 %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %136

76:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %110, %76
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %113

81:                                               ; preds = %77
  %82 = load i8**, i8*** %12, align 8
  %83 = icmp ne i8** %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i8**, i8*** %12, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  br label %91

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %84
  %92 = phi i8* [ %89, %84 ], [ null, %90 ]
  store i8* %92, i8** %16, align 8
  %93 = load i8*, i8** %16, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %109

95:                                               ; preds = %91
  %96 = load i8*, i8** %16, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* @NAMEDATALEN, align 4
  %99 = call i64 @pg_strncasecmp(i8* %96, i8* %97, i32 %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %95
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %8, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %7, align 8
  store i32 %107, i32* %108, align 4
  br label %113

109:                                              ; preds = %95, %91
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %77

113:                                              ; preds = %101, %77
  %114 = load i32, i32* %8, align 4
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %126

116:                                              ; preds = %113
  %117 = load i32, i32* %5, align 4
  %118 = call i8* @get_func_name(i32 %117)
  store i8* %118, i8** %17, align 8
  %119 = load i32, i32* @ERROR, align 4
  %120 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %121 = call i32 @errcode(i32 %120)
  %122 = load i8*, i8** %17, align 8
  %123 = call i32 @errmsg(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i64 0, i64 0), i8* %122)
  %124 = call i32 @errhint(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0))
  %125 = call i32 @ereport(i32 %119, i32 %124)
  br label %126

126:                                              ; preds = %116, %113
  %127 = load i32*, i32** %14, align 8
  %128 = call i32 @ReleaseSysCache(i32* %127)
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @InvalidOid, align 4
  %132 = icmp ne i32 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @Assert(i32 %133)
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %126, %58
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @get_func_arg_info(i32*, i32**, i8***, i8**) #1

declare dso_local i64 @argumentStartsWith(i8*, i8*) #1

declare dso_local i32 @pg_atoi(i8*, i32, i32) #1

declare dso_local i8* @get_func_name(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @ReleaseSysCache(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @pg_strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
