; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_int.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"0b\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid character '%c': %s\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@type_int = common dso_local global i32* null, align 8
@type_long = common dso_local global i32* null, align 8
@UINT_MAX = common dso_local global i64 0, align 8
@type_uint = common dso_local global i32* null, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@type_ulong = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*)* @read_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_int(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strncasecmp(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 2
  %18 = call i64 @strtoul(i8* %17, i8** %5, i32 2)
  br label %22

19:                                               ; preds = %1
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strtoul(i8* %20, i8** %5, i32 0)
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i64 [ %18, %15 ], [ %21, %19 ]
  store i64 %23, i64* %6, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32* @read_int_suffix(i8* %24)
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32*, i32** %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32* @ast_inttype(i32* %29, i64 %30)
  store i32* %31, i32** %2, align 8
  br label %101

32:                                               ; preds = %22
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @errort(%struct.TYPE_4__* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8 signext %40, i8* %41)
  br label %43

43:                                               ; preds = %37, %32
  %44 = load i8*, i8** %4, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 48
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %43
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @INT_MAX, align 8
  %54 = xor i64 %53, -1
  %55 = and i64 %52, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %51
  %58 = load i32*, i32** @type_int, align 8
  br label %61

59:                                               ; preds = %51
  %60 = load i32*, i32** @type_long, align 8
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32* [ %58, %57 ], [ %60, %59 ]
  store i32* %62, i32** %7, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32* @ast_inttype(i32* %63, i64 %64)
  store i32* %65, i32** %2, align 8
  br label %101

66:                                               ; preds = %43
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @INT_MAX, align 8
  %69 = xor i64 %68, -1
  %70 = and i64 %67, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %66
  %73 = load i32*, i32** @type_int, align 8
  br label %96

74:                                               ; preds = %66
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @UINT_MAX, align 8
  %77 = xor i64 %76, -1
  %78 = and i64 %75, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %74
  %81 = load i32*, i32** @type_uint, align 8
  br label %94

82:                                               ; preds = %74
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* @LONG_MAX, align 8
  %85 = xor i64 %84, -1
  %86 = and i64 %83, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %82
  %89 = load i32*, i32** @type_long, align 8
  br label %92

90:                                               ; preds = %82
  %91 = load i32*, i32** @type_ulong, align 8
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32* [ %89, %88 ], [ %91, %90 ]
  br label %94

94:                                               ; preds = %92, %80
  %95 = phi i32* [ %81, %80 ], [ %93, %92 ]
  br label %96

96:                                               ; preds = %94, %72
  %97 = phi i32* [ %73, %72 ], [ %95, %94 ]
  store i32* %97, i32** %7, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i32* @ast_inttype(i32* %98, i64 %99)
  store i32* %100, i32** %2, align 8
  br label %101

101:                                              ; preds = %96, %61, %28
  %102 = load i32*, i32** %2, align 8
  ret i32* %102
}

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32* @read_int_suffix(i8*) #1

declare dso_local i32* @ast_inttype(i32*, i64) #1

declare dso_local i32 @errort(%struct.TYPE_4__*, i8*, i8 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
