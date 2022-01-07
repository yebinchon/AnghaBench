; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_makepng.c_find_insert.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_makepng.c_find_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"makepng --insert \22%s\22: invalid chunk name\0A\00", align 1
@insert_iCCP = common dso_local global i32 0, align 4
@insert_tEXt = common dso_local global i32 0, align 4
@insert_zTXt = common dso_local global i32 0, align 4
@insert_iTXt = common dso_local global i32 0, align 4
@insert_hIST = common dso_local global i32 0, align 4
@insert_sBIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"makepng --insert \22%s\22: unrecognized chunk name\0A\00", align 1
@insert_sPLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @find_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_insert(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %47, %2
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %50

14:                                               ; preds = %11
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %10, align 1
  %21 = load i8, i8* %10, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sge i32 %22, 65
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = load i8, i8* %10, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp sle i32 %26, 90
  br i1 %27, label %36, label %28

28:                                               ; preds = %24, %14
  %29 = load i8, i8* %10, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sge i32 %30, 97
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load i8, i8* %10, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sle i32 %34, 122
  br i1 %35, label %36, label %45

36:                                               ; preds = %32, %24
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 %37, 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %38, %43
  store i32 %44, i32* %6, align 4
  br label %46

45:                                               ; preds = %32, %28
  br label %50

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %11

50:                                               ; preds = %45, %11
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53, %50
  %59 = load i32, i32* @stderr, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32* %60)
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %53
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = getelementptr inbounds [1024 x i32], [1024 x i32]* %7, i64 0, i64 0
  %67 = call i32 @find_parameters(i32* %64, i32 %65, i32* %66, i32 1024)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %6, align 4
  switch i32 %68, label %129 [
    i32 1766015824, label %69
    i32 1950701684, label %79
    i32 2052348020, label %89
    i32 1767135348, label %99
    i32 1749635924, label %109
    i32 1933723988, label %119
  ]

69:                                               ; preds = %63
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* @insert_iCCP, align 4
  %75 = load i32, i32* %9, align 4
  %76 = getelementptr inbounds [1024 x i32], [1024 x i32]* %7, i64 0, i64 0
  %77 = call i32* @make_insert(i32* %73, i32 %74, i32 %75, i32* %76)
  store i32* %77, i32** %3, align 8
  br label %138

78:                                               ; preds = %69
  br label %134

79:                                               ; preds = %63
  %80 = load i32, i32* %9, align 4
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* @insert_tEXt, align 4
  %85 = load i32, i32* %9, align 4
  %86 = getelementptr inbounds [1024 x i32], [1024 x i32]* %7, i64 0, i64 0
  %87 = call i32* @make_insert(i32* %83, i32 %84, i32 %85, i32* %86)
  store i32* %87, i32** %3, align 8
  br label %138

88:                                               ; preds = %79
  br label %134

89:                                               ; preds = %63
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* @insert_zTXt, align 4
  %95 = load i32, i32* %9, align 4
  %96 = getelementptr inbounds [1024 x i32], [1024 x i32]* %7, i64 0, i64 0
  %97 = call i32* @make_insert(i32* %93, i32 %94, i32 %95, i32* %96)
  store i32* %97, i32** %3, align 8
  br label %138

98:                                               ; preds = %89
  br label %134

99:                                               ; preds = %63
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %100, 4
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* @insert_iTXt, align 4
  %105 = load i32, i32* %9, align 4
  %106 = getelementptr inbounds [1024 x i32], [1024 x i32]* %7, i64 0, i64 0
  %107 = call i32* @make_insert(i32* %103, i32 %104, i32 %105, i32* %106)
  store i32* %107, i32** %3, align 8
  br label %138

108:                                              ; preds = %99
  br label %134

109:                                              ; preds = %63
  %110 = load i32, i32* %9, align 4
  %111 = icmp sle i32 %110, 256
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* @insert_hIST, align 4
  %115 = load i32, i32* %9, align 4
  %116 = getelementptr inbounds [1024 x i32], [1024 x i32]* %7, i64 0, i64 0
  %117 = call i32* @make_insert(i32* %113, i32 %114, i32 %115, i32* %116)
  store i32* %117, i32** %3, align 8
  br label %138

118:                                              ; preds = %109
  br label %134

119:                                              ; preds = %63
  %120 = load i32, i32* %9, align 4
  %121 = icmp sle i32 %120, 4
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* @insert_sBIT, align 4
  %125 = load i32, i32* %9, align 4
  %126 = getelementptr inbounds [1024 x i32], [1024 x i32]* %7, i64 0, i64 0
  %127 = call i32* @make_insert(i32* %123, i32 %124, i32 %125, i32* %126)
  store i32* %127, i32** %3, align 8
  br label %138

128:                                              ; preds = %119
  br label %134

129:                                              ; preds = %63
  %130 = load i32, i32* @stderr, align 4
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @fprintf(i32 %130, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32* %131)
  %133 = call i32 @exit(i32 1) #3
  unreachable

134:                                              ; preds = %128, %118, %108, %98, %88, %78
  %135 = load i32*, i32** %4, align 8
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @bad_parameter_count(i32* %135, i32 %136)
  store i32* null, i32** %3, align 8
  br label %138

138:                                              ; preds = %134, %122, %112, %102, %92, %82, %72
  %139 = load i32*, i32** %3, align 8
  ret i32* %139
}

declare dso_local i32 @fprintf(i32, i8*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @find_parameters(i32*, i32, i32*, i32) #1

declare dso_local i32* @make_insert(i32*, i32, i32, i32*) #1

declare dso_local i32 @bad_parameter_count(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
