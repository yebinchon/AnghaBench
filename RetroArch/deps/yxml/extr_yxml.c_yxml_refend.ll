; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/yxml/extr_yxml.c_yxml_refend.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/yxml/extr_yxml.c_yxml_refend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@YXML_EREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @yxml_refend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yxml_refend(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 35
  br i1 %16, label %17, label %85

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 120
  br i1 %22, label %23, label %58

23:                                               ; preds = %17
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  store i8* %25, i8** %6, align 8
  br label %26

26:                                               ; preds = %54, %23
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = call i64 @yxml_isHex(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 %33, 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp sle i32 %37, 57
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = sub nsw i32 %42, 48
  br label %51

44:                                               ; preds = %32
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %47, 32
  %49 = sub nsw i32 %48, 97
  %50 = add nsw i32 %49, 10
  br label %51

51:                                               ; preds = %44, %39
  %52 = phi i32 [ %43, %39 ], [ %50, %44 ]
  %53 = add i32 %34, %52
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  br label %26

57:                                               ; preds = %26
  br label %79

58:                                               ; preds = %17
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %6, align 8
  br label %61

61:                                               ; preds = %75, %58
  %62 = load i8*, i8** %6, align 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = call i64 @yxml_isNum(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load i32, i32* %7, align 4
  %69 = mul i32 %68, 10
  %70 = load i8*, i8** %6, align 8
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = sub nsw i32 %72, 48
  %74 = add i32 %69, %73
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %67
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %6, align 8
  br label %61

78:                                               ; preds = %61
  br label %79

79:                                               ; preds = %78, %57
  %80 = load i8*, i8** %6, align 8
  %81 = load i8, i8* %80, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %79
  br label %135

85:                                               ; preds = %2
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  %94 = load i8, i8* %93, align 1
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 3
  %97 = load i8, i8* %96, align 1
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 4
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @INTFROM5CHARS(i8 signext %88, i8 zeroext %91, i8 signext %94, i8 signext %97, i8 zeroext %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @INTFROM5CHARS(i8 signext 108, i8 zeroext 116, i8 signext 0, i8 signext 0, i8 zeroext 0)
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %85
  br label %133

106:                                              ; preds = %85
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @INTFROM5CHARS(i8 signext 103, i8 zeroext 116, i8 signext 0, i8 signext 0, i8 zeroext 0)
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %131

111:                                              ; preds = %106
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @INTFROM5CHARS(i8 signext 97, i8 zeroext 109, i8 signext 112, i8 signext 0, i8 zeroext 0)
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %129

116:                                              ; preds = %111
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @INTFROM5CHARS(i8 signext 97, i8 zeroext 112, i8 signext 111, i8 signext 115, i8 zeroext 0)
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %127

121:                                              ; preds = %116
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @INTFROM5CHARS(i8 signext 113, i8 zeroext 117, i8 signext 111, i8 signext 116, i8 zeroext 0)
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 34, i32 0
  br label %127

127:                                              ; preds = %121, %120
  %128 = phi i32 [ 39, %120 ], [ %126, %121 ]
  br label %129

129:                                              ; preds = %127, %115
  %130 = phi i32 [ 38, %115 ], [ %128, %127 ]
  br label %131

131:                                              ; preds = %129, %110
  %132 = phi i32 [ 62, %110 ], [ %130, %129 ]
  br label %133

133:                                              ; preds = %131, %105
  %134 = phi i32 [ 60, %105 ], [ %132, %131 ]
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %133, %84
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %135
  %139 = load i32, i32* %7, align 4
  %140 = icmp ugt i32 %139, 1114111
  br i1 %140, label %151, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %7, align 4
  %143 = icmp eq i32 %142, 65534
  br i1 %143, label %151, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %7, align 4
  %146 = icmp eq i32 %145, 65535
  br i1 %146, label %151, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %7, align 4
  %149 = sub i32 %148, 57343
  %150 = icmp ult i32 %149, 2047
  br i1 %150, label %151, label %153

151:                                              ; preds = %147, %144, %141, %138, %135
  %152 = load i32, i32* @YXML_EREF, align 4
  store i32 %152, i32* %3, align 4
  br label %160

153:                                              ; preds = %147
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @yxml_setutf8(i64 %156, i32 %157)
  %159 = load i32, i32* %5, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %153, %151
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i64 @yxml_isHex(i32) #1

declare dso_local i64 @yxml_isNum(i32) #1

declare dso_local i32 @INTFROM5CHARS(i8 signext, i8 zeroext, i8 signext, i8 signext, i8 zeroext) #1

declare dso_local i32 @yxml_setutf8(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
