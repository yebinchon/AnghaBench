; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_plural.c___gettextlex.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_plural.c___gettextlex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@YYEOF = common dso_local global i32 0, align 4
@NUMBER = common dso_local global i32 0, align 4
@equal = common dso_local global i32 0, align 4
@EQUOP2 = common dso_local global i32 0, align 4
@YYERRCODE = common dso_local global i32 0, align 4
@not_equal = common dso_local global i32 0, align 4
@less_or_equal = common dso_local global i32 0, align 4
@less_than = common dso_local global i32 0, align 4
@CMPOP2 = common dso_local global i32 0, align 4
@greater_or_equal = common dso_local global i32 0, align 4
@greater_than = common dso_local global i32 0, align 4
@mult = common dso_local global i32 0, align 4
@MULOP2 = common dso_local global i32 0, align 4
@divide = common dso_local global i32 0, align 4
@module = common dso_local global i32 0, align 4
@plus = common dso_local global i32 0, align 4
@ADDOP2 = common dso_local global i32 0, align 4
@minus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8**)* @yylex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yylex(%struct.TYPE_3__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  br label %11

11:                                               ; preds = %2, %34
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i8*, i8** %6, align 8
  %19 = load i8**, i8*** %5, align 8
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* @YYEOF, align 4
  store i32 %20, i32* %3, align 4
  br label %194

21:                                               ; preds = %11
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 32
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 9
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %37

34:                                               ; preds = %27, %21
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  br label %11

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %6, align 8
  %40 = load i8, i8* %38, align 1
  %41 = sext i8 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  switch i32 %42, label %188 [
    i32 48, label %43
    i32 49, label %43
    i32 50, label %43
    i32 51, label %43
    i32 52, label %43
    i32 53, label %43
    i32 54, label %43
    i32 55, label %43
    i32 56, label %43
    i32 57, label %43
    i32 61, label %79
    i32 33, label %95
    i32 38, label %109
    i32 124, label %109
    i32 60, label %122
    i32 62, label %140
    i32 42, label %158
    i32 47, label %163
    i32 37, label %168
    i32 43, label %173
    i32 45, label %178
    i32 110, label %183
    i32 63, label %183
    i32 58, label %183
    i32 40, label %183
    i32 41, label %183
    i32 59, label %184
    i32 10, label %184
    i32 0, label %184
  ]

43:                                               ; preds = %37, %37, %37, %37, %37, %37, %37, %37, %37, %37
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, 48
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %61, %43
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sge i32 %51, 48
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp sle i32 %57, 57
  br label %59

59:                                               ; preds = %53, %47
  %60 = phi i1 [ false, %47 ], [ %58, %53 ]
  br i1 %60, label %61, label %74

61:                                               ; preds = %59
  %62 = load i64, i64* %8, align 8
  %63 = mul i64 %62, 10
  store i64 %63, i64* %8, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = sub nsw i32 %67, 48
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %8, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  br label %47

74:                                               ; preds = %59
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i32, i32* @NUMBER, align 4
  store i32 %78, i32* %7, align 4
  br label %190

79:                                               ; preds = %37
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 61
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %6, align 8
  %88 = load i32, i32* @equal, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @EQUOP2, align 4
  store i32 %91, i32* %7, align 4
  br label %94

92:                                               ; preds = %79
  %93 = load i32, i32* @YYERRCODE, align 4
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %92, %85
  br label %190

95:                                               ; preds = %37
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 61
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %6, align 8
  %104 = load i32, i32* @not_equal, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @EQUOP2, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %101, %95
  br label %190

109:                                              ; preds = %37, %37
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = load i32, i32* %7, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %6, align 8
  br label %121

119:                                              ; preds = %109
  %120 = load i32, i32* @YYERRCODE, align 4
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %119, %116
  br label %190

122:                                              ; preds = %37
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 61
  br i1 %127, label %128, label %134

128:                                              ; preds = %122
  %129 = load i8*, i8** %6, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %6, align 8
  %131 = load i32, i32* @less_or_equal, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 8
  br label %138

134:                                              ; preds = %122
  %135 = load i32, i32* @less_than, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %134, %128
  %139 = load i32, i32* @CMPOP2, align 4
  store i32 %139, i32* %7, align 4
  br label %190

140:                                              ; preds = %37
  %141 = load i8*, i8** %6, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 61
  br i1 %145, label %146, label %152

146:                                              ; preds = %140
  %147 = load i8*, i8** %6, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %6, align 8
  %149 = load i32, i32* @greater_or_equal, align 4
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 8
  br label %156

152:                                              ; preds = %140
  %153 = load i32, i32* @greater_than, align 4
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %152, %146
  %157 = load i32, i32* @CMPOP2, align 4
  store i32 %157, i32* %7, align 4
  br label %190

158:                                              ; preds = %37
  %159 = load i32, i32* @mult, align 4
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* @MULOP2, align 4
  store i32 %162, i32* %7, align 4
  br label %190

163:                                              ; preds = %37
  %164 = load i32, i32* @divide, align 4
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* @MULOP2, align 4
  store i32 %167, i32* %7, align 4
  br label %190

168:                                              ; preds = %37
  %169 = load i32, i32* @module, align 4
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* @MULOP2, align 4
  store i32 %172, i32* %7, align 4
  br label %190

173:                                              ; preds = %37
  %174 = load i32, i32* @plus, align 4
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 8
  %177 = load i32, i32* @ADDOP2, align 4
  store i32 %177, i32* %7, align 4
  br label %190

178:                                              ; preds = %37
  %179 = load i32, i32* @minus, align 4
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* @ADDOP2, align 4
  store i32 %182, i32* %7, align 4
  br label %190

183:                                              ; preds = %37, %37, %37, %37, %37
  br label %190

184:                                              ; preds = %37, %37, %37
  %185 = load i8*, i8** %6, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 -1
  store i8* %186, i8** %6, align 8
  %187 = load i32, i32* @YYEOF, align 4
  store i32 %187, i32* %7, align 4
  br label %190

188:                                              ; preds = %37
  %189 = load i32, i32* @YYERRCODE, align 4
  store i32 %189, i32* %7, align 4
  br label %190

190:                                              ; preds = %188, %184, %183, %178, %173, %168, %163, %158, %156, %138, %121, %108, %94, %74
  %191 = load i8*, i8** %6, align 8
  %192 = load i8**, i8*** %5, align 8
  store i8* %191, i8** %192, align 8
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %190, %17
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
