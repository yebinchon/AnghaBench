; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_trex_matchcclass.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_trex_matchcclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRex_True = common dso_local global i32 0, align 4
@TRex_False = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @trex_matchcclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trex_matchcclass(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %175 [
    i32 97, label %9
    i32 65, label %19
    i32 119, label %29
    i32 87, label %42
    i32 115, label %55
    i32 83, label %65
    i32 100, label %75
    i32 68, label %85
    i32 120, label %95
    i32 88, label %105
    i32 99, label %115
    i32 67, label %125
    i32 112, label %135
    i32 80, label %145
    i32 108, label %155
    i32 117, label %165
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @isalpha(i32 %10) #2
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @TRex_True, align 4
  br label %17

15:                                               ; preds = %9
  %16 = load i32, i32* @TRex_False, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %3, align 4
  br label %177

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @isalpha(i32 %20) #2
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @TRex_True, align 4
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @TRex_False, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %3, align 4
  br label %177

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @isalnum(i32 %30) #2
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 95
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %29
  %37 = load i32, i32* @TRex_True, align 4
  br label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @TRex_False, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %3, align 4
  br label %177

42:                                               ; preds = %2
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @isalnum(i32 %43) #2
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 95
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @TRex_True, align 4
  br label %53

51:                                               ; preds = %46, %42
  %52 = load i32, i32* @TRex_False, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %3, align 4
  br label %177

55:                                               ; preds = %2
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @isspace(i32 %56) #2
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @TRex_True, align 4
  br label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @TRex_False, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  store i32 %64, i32* %3, align 4
  br label %177

65:                                               ; preds = %2
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @isspace(i32 %66) #2
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @TRex_True, align 4
  br label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @TRex_False, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  store i32 %74, i32* %3, align 4
  br label %177

75:                                               ; preds = %2
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @isdigit(i32 %76) #2
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @TRex_True, align 4
  br label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @TRex_False, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  store i32 %84, i32* %3, align 4
  br label %177

85:                                               ; preds = %2
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @isdigit(i32 %86) #2
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* @TRex_True, align 4
  br label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @TRex_False, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  store i32 %94, i32* %3, align 4
  br label %177

95:                                               ; preds = %2
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @isxdigit(i32 %96) #2
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* @TRex_True, align 4
  br label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @TRex_False, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  store i32 %104, i32* %3, align 4
  br label %177

105:                                              ; preds = %2
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @isxdigit(i32 %106) #2
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* @TRex_True, align 4
  br label %113

111:                                              ; preds = %105
  %112 = load i32, i32* @TRex_False, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  store i32 %114, i32* %3, align 4
  br label %177

115:                                              ; preds = %2
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @iscntrl(i32 %116) #2
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, i32* @TRex_True, align 4
  br label %123

121:                                              ; preds = %115
  %122 = load i32, i32* @TRex_False, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  store i32 %124, i32* %3, align 4
  br label %177

125:                                              ; preds = %2
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @iscntrl(i32 %126) #2
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* @TRex_True, align 4
  br label %133

131:                                              ; preds = %125
  %132 = load i32, i32* @TRex_False, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  store i32 %134, i32* %3, align 4
  br label %177

135:                                              ; preds = %2
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @ispunct(i32 %136) #2
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32, i32* @TRex_True, align 4
  br label %143

141:                                              ; preds = %135
  %142 = load i32, i32* @TRex_False, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ]
  store i32 %144, i32* %3, align 4
  br label %177

145:                                              ; preds = %2
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @ispunct(i32 %146) #2
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* @TRex_True, align 4
  br label %153

151:                                              ; preds = %145
  %152 = load i32, i32* @TRex_False, align 4
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i32 [ %150, %149 ], [ %152, %151 ]
  store i32 %154, i32* %3, align 4
  br label %177

155:                                              ; preds = %2
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @islower(i32 %156) #2
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = load i32, i32* @TRex_True, align 4
  br label %163

161:                                              ; preds = %155
  %162 = load i32, i32* @TRex_False, align 4
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ]
  store i32 %164, i32* %3, align 4
  br label %177

165:                                              ; preds = %2
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @isupper(i32 %166) #2
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = load i32, i32* @TRex_True, align 4
  br label %173

171:                                              ; preds = %165
  %172 = load i32, i32* @TRex_False, align 4
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %170, %169 ], [ %172, %171 ]
  store i32 %174, i32* %3, align 4
  br label %177

175:                                              ; preds = %2
  %176 = load i32, i32* @TRex_False, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %175, %173, %163, %153, %143, %133, %123, %113, %103, %93, %83, %73, %63, %53, %40, %27, %17
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

; Function Attrs: nounwind readonly
declare dso_local i32 @isalpha(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalnum(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isxdigit(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @iscntrl(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @ispunct(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @islower(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isupper(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
