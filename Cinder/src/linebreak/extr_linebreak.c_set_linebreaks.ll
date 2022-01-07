; ModuleID = '/home/carl/AnghaBench/Cinder/src/linebreak/extr_linebreak.c_set_linebreaks.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/linebreak/extr_linebreak.c_set_linebreaks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LineBreakProperties = type { i32 }

@EOS = common dso_local global i64 0, align 8
@LBP_Undefined = common dso_local global i32 0, align 4
@LBP_BA = common dso_local global i32 0, align 4
@LBP_WJ = common dso_local global i32 0, align 4
@LINEBREAK_INSIDEACHAR = common dso_local global i8 0, align 1
@LINEBREAK_MUSTBREAK = common dso_local global i8 0, align 1
@LINEBREAK_NOBREAK = common dso_local global i8 0, align 1
@LINEBREAK_ALLOWBREAK = common dso_local global i8 0, align 1
@LBP_JT = common dso_local global i32 0, align 4
@baTable = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_linebreaks(i8* %0, i64 %1, i8* %2, i8* %3, i64 (i8*, i64, i64*)* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64 (i8*, i64, i64*)*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.LineBreakProperties*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 (i8*, i64, i64*)* %4, i64 (i8*, i64, i64*)** %10, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = load i64 (i8*, i64, i64*)*, i64 (i8*, i64, i64*)** %10, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 %20(i8* %21, i64 %22, i64* %16)
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* @EOS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  br label %209

28:                                               ; preds = %5
  %29 = load i8*, i8** %8, align 8
  %30 = call %struct.LineBreakProperties* @get_lb_prop_lang(i8* %29)
  store %struct.LineBreakProperties* %30, %struct.LineBreakProperties** %15, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load %struct.LineBreakProperties*, %struct.LineBreakProperties** %15, align 8
  %33 = call i32 @get_char_lb_class_lang(i64 %31, %struct.LineBreakProperties* %32)
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @resolve_lb_class(i32 %33, i8* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* @LBP_Undefined, align 4
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %90, %28
  %38 = load i32, i32* %12, align 4
  switch i32 %38, label %44 [
    i32 131, label %39
    i32 130, label %39
    i32 133, label %40
    i32 129, label %42
  ]

39:                                               ; preds = %37, %37
  store i32 134, i32* %12, align 4
  br label %45

40:                                               ; preds = %37
  %41 = load i32, i32* @LBP_BA, align 4
  store i32 %41, i32* %12, align 4
  br label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @LBP_WJ, align 4
  store i32 %43, i32* %12, align 4
  br label %45

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %42, %40, %39
  br label %46

46:                                               ; preds = %180, %173, %115, %110, %105, %100, %45
  %47 = load i64, i64* %17, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %17, align 8
  br label %49

49:                                               ; preds = %59, %46
  %50 = load i64, i64* %17, align 8
  %51 = load i64, i64* %16, align 8
  %52 = sub i64 %51, 1
  %53 = icmp ult i64 %50, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i8, i8* @LINEBREAK_INSIDEACHAR, align 1
  %56 = load i8*, i8** %9, align 8
  %57 = load i64, i64* %17, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 %55, i8* %58, align 1
  br label %59

59:                                               ; preds = %54
  %60 = load i64, i64* %17, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %17, align 8
  br label %49

62:                                               ; preds = %49
  %63 = load i64, i64* %17, align 8
  %64 = load i64, i64* %16, align 8
  %65 = sub i64 %64, 1
  %66 = icmp eq i64 %63, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %14, align 4
  %70 = load i64 (i8*, i64, i64*)*, i64 (i8*, i64, i64*)** %10, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i64 %70(i8* %71, i64 %72, i64* %16)
  store i64 %73, i64* %11, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* @EOS, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %62
  br label %182

78:                                               ; preds = %62
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.LineBreakProperties*, %struct.LineBreakProperties** %15, align 8
  %81 = call i32 @get_char_lb_class_lang(i64 %79, %struct.LineBreakProperties* %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp eq i32 %82, 134
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %12, align 4
  %86 = icmp eq i32 %85, 132
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 131
  br i1 %89, label %90, label %98

90:                                               ; preds = %87, %78
  %91 = load i8, i8* @LINEBREAK_MUSTBREAK, align 1
  %92 = load i8*, i8** %9, align 8
  %93 = load i64, i64* %17, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8 %91, i8* %94, align 1
  %95 = load i32, i32* %13, align 4
  %96 = load i8*, i8** %8, align 8
  %97 = call i32 @resolve_lb_class(i32 %95, i8* %96)
  store i32 %97, i32* %12, align 4
  br label %37

98:                                               ; preds = %87, %84
  %99 = load i32, i32* %13, align 4
  switch i32 %99, label %121 [
    i32 129, label %100
    i32 134, label %105
    i32 131, label %105
    i32 130, label %105
    i32 132, label %110
    i32 133, label %115
  ]

100:                                              ; preds = %98
  %101 = load i8, i8* @LINEBREAK_NOBREAK, align 1
  %102 = load i8*, i8** %9, align 8
  %103 = load i64, i64* %17, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8 %101, i8* %104, align 1
  br label %46

105:                                              ; preds = %98, %98, %98
  %106 = load i8, i8* @LINEBREAK_NOBREAK, align 1
  %107 = load i8*, i8** %9, align 8
  %108 = load i64, i64* %17, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8 %106, i8* %109, align 1
  store i32 134, i32* %12, align 4
  br label %46

110:                                              ; preds = %98
  %111 = load i8, i8* @LINEBREAK_NOBREAK, align 1
  %112 = load i8*, i8** %9, align 8
  %113 = load i64, i64* %17, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8 %111, i8* %114, align 1
  store i32 132, i32* %12, align 4
  br label %46

115:                                              ; preds = %98
  %116 = load i8, i8* @LINEBREAK_ALLOWBREAK, align 1
  %117 = load i8*, i8** %9, align 8
  %118 = load i64, i64* %17, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8 %116, i8* %119, align 1
  %120 = load i32, i32* @LBP_BA, align 4
  store i32 %120, i32* %12, align 4
  br label %46

121:                                              ; preds = %98
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %13, align 4
  %124 = load i8*, i8** %8, align 8
  %125 = call i32 @resolve_lb_class(i32 %123, i8* %124)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @LBP_JT, align 4
  %128 = icmp ule i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* @LBP_JT, align 4
  %133 = icmp ule i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load i32**, i32*** @baTable, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sub i32 %137, 1
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %136, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sub i32 %142, 1
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  switch i32 %146, label %180 [
    i32 136, label %147
    i32 138, label %152
    i32 135, label %152
    i32 137, label %166
    i32 128, label %175
  ]

147:                                              ; preds = %122
  %148 = load i8, i8* @LINEBREAK_ALLOWBREAK, align 1
  %149 = load i8*, i8** %9, align 8
  %150 = load i64, i64* %17, align 8
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  store i8 %148, i8* %151, align 1
  br label %180

152:                                              ; preds = %122, %122
  %153 = load i32, i32* %14, align 4
  %154 = icmp eq i32 %153, 129
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load i8, i8* @LINEBREAK_ALLOWBREAK, align 1
  %157 = load i8*, i8** %9, align 8
  %158 = load i64, i64* %17, align 8
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  store i8 %156, i8* %159, align 1
  br label %165

160:                                              ; preds = %152
  %161 = load i8, i8* @LINEBREAK_NOBREAK, align 1
  %162 = load i8*, i8** %9, align 8
  %163 = load i64, i64* %17, align 8
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  store i8 %161, i8* %164, align 1
  br label %165

165:                                              ; preds = %160, %155
  br label %180

166:                                              ; preds = %122
  %167 = load i8, i8* @LINEBREAK_NOBREAK, align 1
  %168 = load i8*, i8** %9, align 8
  %169 = load i64, i64* %17, align 8
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  store i8 %167, i8* %170, align 1
  %171 = load i32, i32* %14, align 4
  %172 = icmp ne i32 %171, 129
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  br label %46

174:                                              ; preds = %166
  br label %180

175:                                              ; preds = %122
  %176 = load i8, i8* @LINEBREAK_NOBREAK, align 1
  %177 = load i8*, i8** %9, align 8
  %178 = load i64, i64* %17, align 8
  %179 = getelementptr inbounds i8, i8* %177, i64 %178
  store i8 %176, i8* %179, align 1
  br label %180

180:                                              ; preds = %122, %175, %174, %165, %147
  %181 = load i32, i32* %13, align 4
  store i32 %181, i32* %12, align 4
  br label %46

182:                                              ; preds = %77
  %183 = load i64, i64* %17, align 8
  %184 = load i64, i64* %16, align 8
  %185 = sub i64 %184, 1
  %186 = icmp eq i64 %183, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = load i64, i64* %16, align 8
  %189 = load i64, i64* %7, align 8
  %190 = icmp ule i64 %188, %189
  br label %191

191:                                              ; preds = %187, %182
  %192 = phi i1 [ false, %182 ], [ %190, %187 ]
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert(i32 %193)
  %195 = load i8, i8* @LINEBREAK_MUSTBREAK, align 1
  %196 = load i8*, i8** %9, align 8
  %197 = load i64, i64* %17, align 8
  %198 = getelementptr inbounds i8, i8* %196, i64 %197
  store i8 %195, i8* %198, align 1
  br label %199

199:                                              ; preds = %203, %191
  %200 = load i64, i64* %16, align 8
  %201 = load i64, i64* %7, align 8
  %202 = icmp ult i64 %200, %201
  br i1 %202, label %203, label %209

203:                                              ; preds = %199
  %204 = load i8, i8* @LINEBREAK_INSIDEACHAR, align 1
  %205 = load i8*, i8** %9, align 8
  %206 = load i64, i64* %16, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %16, align 8
  %208 = getelementptr inbounds i8, i8* %205, i64 %206
  store i8 %204, i8* %208, align 1
  br label %199

209:                                              ; preds = %27, %199
  ret void
}

declare dso_local %struct.LineBreakProperties* @get_lb_prop_lang(i8*) #1

declare dso_local i32 @resolve_lb_class(i32, i8*) #1

declare dso_local i32 @get_char_lb_class_lang(i64, %struct.LineBreakProperties*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
