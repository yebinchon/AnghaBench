; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_operand.c_rc_parse_operand_term.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_operand.c_rc_parse_operand_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@RC_INVALID_CONST_OPERAND = common dso_local global i32 0, align 4
@RC_OPERAND_CONST = common dso_local global i8* null, align 8
@RC_INVALID_FP_OPERAND = common dso_local global i32 0, align 4
@RC_OPERAND_FP = common dso_local global i8* null, align 8
@RC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8**, i32*)* @rc_parse_operand_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc_parse_operand_term(%struct.TYPE_7__* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %76 [
    i32 104, label %17
    i32 72, label %17
    i32 118, label %40
    i32 86, label %40
    i32 48, label %63
    i32 46, label %86
    i32 43, label %86
    i32 45, label %86
    i32 49, label %86
    i32 50, label %86
    i32 51, label %86
    i32 52, label %86
    i32 53, label %86
    i32 54, label %86
    i32 55, label %86
    i32 56, label %86
    i32 57, label %86
    i32 64, label %126
  ]

17:                                               ; preds = %3, %3
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %8, align 8
  %20 = call i64 @strtoul(i8* %19, i8** %9, i32 16)
  store i64 %20, i64* %11, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @RC_INVALID_CONST_OPERAND, align 4
  store i32 %25, i32* %4, align 4
  br label %139

26:                                               ; preds = %17
  %27 = load i64, i64* %11, align 8
  %28 = icmp ugt i64 %27, 4294967295
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i64 4294967295, i64* %11, align 8
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i8*, i8** @RC_OPERAND_CONST, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i64, i64* %11, align 8
  %35 = trunc i64 %34 to i32
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load i8*, i8** %9, align 8
  store i8* %39, i8** %8, align 8
  br label %135

40:                                               ; preds = %3, %3
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %8, align 8
  %43 = call i64 @strtoul(i8* %42, i8** %9, i32 10)
  store i64 %43, i64* %11, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @RC_INVALID_CONST_OPERAND, align 4
  store i32 %48, i32* %4, align 4
  br label %139

49:                                               ; preds = %40
  %50 = load i64, i64* %11, align 8
  %51 = icmp ugt i64 %50, 4294967295
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i64 4294967295, i64* %11, align 8
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i8*, i8** @RC_OPERAND_CONST, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load i64, i64* %11, align 8
  %58 = trunc i64 %57 to i32
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load i8*, i8** %9, align 8
  store i8* %62, i8** %8, align 8
  br label %135

63:                                               ; preds = %3
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 120
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 88
  br i1 %74, label %75, label %85

75:                                               ; preds = %69, %63
  br label %76

76:                                               ; preds = %3, %75
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @rc_parse_operand_memory(%struct.TYPE_7__* %77, i8** %8, i32* %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %139

84:                                               ; preds = %76
  br label %135

85:                                               ; preds = %69
  br label %86

86:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %85
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @strtod(i8* %87, i8** %9)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load i8*, i8** %9, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = icmp eq i8* %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i32, i32* @RC_INVALID_FP_OPERAND, align 4
  store i32 %96, i32* %4, align 4
  br label %139

97:                                               ; preds = %86
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @floor(i32 %101)
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %102, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %97
  %109 = load i8*, i8** @RC_OPERAND_CONST, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @floor(i32 %115)
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  br label %124

120:                                              ; preds = %97
  %121 = load i8*, i8** @RC_OPERAND_FP, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store i8* %121, i8** %123, align 8
  br label %124

124:                                              ; preds = %120, %108
  %125 = load i8*, i8** %9, align 8
  store i8* %125, i8** %8, align 8
  br label %135

126:                                              ; preds = %3
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = call i32 @rc_parse_operand_lua(%struct.TYPE_7__* %127, i8** %8, i32* %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %4, align 4
  br label %139

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %134, %124, %84, %53, %30
  %136 = load i8*, i8** %8, align 8
  %137 = load i8**, i8*** %6, align 8
  store i8* %136, i8** %137, align 8
  %138 = load i32, i32* @RC_OK, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %135, %132, %95, %82, %47, %24
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @rc_parse_operand_memory(%struct.TYPE_7__*, i8**, i32*) #1

declare dso_local i32 @strtod(i8*, i8**) #1

declare dso_local i32 @floor(i32) #1

declare dso_local i32 @rc_parse_operand_lua(%struct.TYPE_7__*, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
