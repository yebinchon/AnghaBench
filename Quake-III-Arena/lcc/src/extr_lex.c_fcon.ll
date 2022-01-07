; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_lex.c_fcon.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_lex.c_fcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_15__*, %struct.TYPE_18__ }
%struct.TYPE_15__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }

@cp = common dso_local global i8* null, align 8
@map = common dso_local global i32* null, align 8
@DIGIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"invalid floating constant `%S'\0A\00", align 1
@token = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@tval = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@ERANGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"overflow in floating constant `%S'\0A\00", align 1
@floattype = common dso_local global %struct.TYPE_15__* null, align 8
@longdouble = common dso_local global %struct.TYPE_15__* null, align 8
@doubletype = common dso_local global %struct.TYPE_15__* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"floating\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_24__* ()* @fcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_24__* @fcon() #0 {
  %1 = load i8*, i8** @cp, align 8
  %2 = load i8, i8* %1, align 1
  %3 = sext i8 %2 to i32
  %4 = icmp eq i32 %3, 46
  br i1 %4, label %5, label %20

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %9, %5
  %7 = load i8*, i8** @cp, align 8
  %8 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %8, i8** @cp, align 8
  br label %9

9:                                                ; preds = %6
  %10 = load i32*, i32** @map, align 8
  %11 = load i8*, i8** @cp, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i64
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DIGIT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %6, label %19

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19, %0
  %21 = load i8*, i8** @cp, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 101
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** @cp, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 69
  br i1 %29, label %30, label %78

30:                                               ; preds = %25, %20
  %31 = load i8*, i8** @cp, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** @cp, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 45
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load i8*, i8** @cp, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 43
  br i1 %40, label %41, label %44

41:                                               ; preds = %36, %30
  %42 = load i8*, i8** @cp, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** @cp, align 8
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32*, i32** @map, align 8
  %46 = load i8*, i8** @cp, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DIGIT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %58, %54
  %56 = load i8*, i8** @cp, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** @cp, align 8
  br label %58

58:                                               ; preds = %55
  %59 = load i32*, i32** @map, align 8
  %60 = load i8*, i8** @cp, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DIGIT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %55, label %68

68:                                               ; preds = %58
  br label %77

69:                                               ; preds = %44
  %70 = load i32, i32* @token, align 4
  %71 = load i8*, i8** @cp, align 8
  %72 = load i32, i32* @token, align 4
  %73 = sext i32 %72 to i64
  %74 = sub i64 0, %73
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %70, i8* %75)
  br label %77

77:                                               ; preds = %69, %68
  br label %78

78:                                               ; preds = %77, %25
  store i64 0, i64* @errno, align 8
  %79 = load i32, i32* @token, align 4
  %80 = call i64 @strtod(i32 %79, i32* null)
  store i64 %80, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 1, i32 0, i32 0, i32 0), align 8
  %81 = load i64, i64* @errno, align 8
  %82 = load i64, i64* @ERANGE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load i32, i32* @token, align 4
  %86 = load i8*, i8** @cp, align 8
  %87 = load i32, i32* @token, align 4
  %88 = sext i32 %87 to i64
  %89 = sub i64 0, %88
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  %91 = call i32 @warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %85, i8* %90)
  br label %92

92:                                               ; preds = %84, %78
  %93 = load i8*, i8** @cp, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 102
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load i8*, i8** @cp, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 70
  br i1 %101, label %102, label %126

102:                                              ; preds = %97, %92
  %103 = load i8*, i8** @cp, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** @cp, align 8
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 1, i32 0, i32 0, i32 0), align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** @floattype, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp sgt i64 %105, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %102
  %117 = load i32, i32* @token, align 4
  %118 = load i8*, i8** @cp, align 8
  %119 = load i32, i32* @token, align 4
  %120 = sext i32 %119 to i64
  %121 = sub i64 0, %120
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  %123 = call i32 @warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %117, i8* %122)
  br label %124

124:                                              ; preds = %116, %102
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** @floattype, align 8
  store %struct.TYPE_15__* %125, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 0), align 8
  br label %163

126:                                              ; preds = %97
  %127 = load i8*, i8** @cp, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 108
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load i8*, i8** @cp, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 76
  br i1 %135, label %136, label %140

136:                                              ; preds = %131, %126
  %137 = load i8*, i8** @cp, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** @cp, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** @longdouble, align 8
  store %struct.TYPE_15__* %139, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 0), align 8
  br label %162

140:                                              ; preds = %131
  %141 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 1, i32 0, i32 0, i32 0), align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** @doubletype, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp sgt i64 %141, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %140
  %153 = load i32, i32* @token, align 4
  %154 = load i8*, i8** @cp, align 8
  %155 = load i32, i32* @token, align 4
  %156 = sext i32 %155 to i64
  %157 = sub i64 0, %156
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  %159 = call i32 @warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %153, i8* %158)
  br label %160

160:                                              ; preds = %152, %140
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** @doubletype, align 8
  store %struct.TYPE_15__* %161, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 0), align 8
  br label %162

162:                                              ; preds = %160, %136
  br label %163

163:                                              ; preds = %162, %124
  %164 = call i32 @ppnumber(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  ret %struct.TYPE_24__* @tval
}

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i64 @strtod(i32, i32*) #1

declare dso_local i32 @warning(i8*, i32, i8*) #1

declare dso_local i32 @ppnumber(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
