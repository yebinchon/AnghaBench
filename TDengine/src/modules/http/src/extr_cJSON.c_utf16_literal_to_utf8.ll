; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_cJSON.c_utf16_literal_to_utf8.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_cJSON.c_utf16_literal_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*, i8*, i8**)* @utf16_literal_to_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @utf16_literal_to_utf8(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %10, align 8
  store i8 0, i8* %11, align 1
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = icmp slt i64 %22, 6
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %157

25:                                               ; preds = %3
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  %28 = call i32 @parse_hex4(i8* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp uge i32 %29, 56320
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = icmp ule i32 %32, 57343
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %157

35:                                               ; preds = %31, %25
  %36 = load i32, i32* %9, align 4
  %37 = icmp uge i32 %36, 55296
  br i1 %37, label %38, label %82

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = icmp ule i32 %39, 56319
  br i1 %40, label %41, label %82

41:                                               ; preds = %38
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 6
  store i8* %43, i8** %15, align 8
  store i32 0, i32* %16, align 4
  store i8 12, i8* %13, align 1
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = icmp slt i64 %48, 6
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %157

51:                                               ; preds = %41
  %52 = load i8*, i8** %15, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %55, 92
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load i8*, i8** %15, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp ne i32 %61, 117
  br i1 %62, label %63, label %64

63:                                               ; preds = %57, %51
  br label %157

64:                                               ; preds = %57
  %65 = load i8*, i8** %15, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  %67 = call i32 @parse_hex4(i8* %66)
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp ult i32 %68, 56320
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %16, align 4
  %72 = icmp ugt i32 %71, 57343
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %64
  br label %157

74:                                               ; preds = %70
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, 1023
  %77 = shl i32 %76, 10
  %78 = load i32, i32* %16, align 4
  %79 = and i32 %78, 1023
  %80 = or i32 %77, %79
  %81 = add i32 65536, %80
  store i32 %81, i32* %8, align 4
  br label %84

82:                                               ; preds = %38, %35
  store i8 6, i8* %13, align 1
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %82, %74
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 128
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i8 1, i8* %11, align 1
  br label %104

88:                                               ; preds = %84
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 2048
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i8 2, i8* %11, align 1
  store i8 -64, i8* %14, align 1
  br label %103

92:                                               ; preds = %88
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 65536
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i8 3, i8* %11, align 1
  store i8 -32, i8* %14, align 1
  br label %102

96:                                               ; preds = %92
  %97 = load i32, i32* %8, align 4
  %98 = icmp sle i32 %97, 1114111
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i8 4, i8* %11, align 1
  store i8 -16, i8* %14, align 1
  br label %101

100:                                              ; preds = %96
  br label %157

101:                                              ; preds = %99
  br label %102

102:                                              ; preds = %101, %95
  br label %103

103:                                              ; preds = %102, %91
  br label %104

104:                                              ; preds = %103, %87
  %105 = load i8, i8* %11, align 1
  %106 = zext i8 %105 to i32
  %107 = sub nsw i32 %106, 1
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %12, align 1
  br label %109

109:                                              ; preds = %125, %104
  %110 = load i8, i8* %12, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %109
  %114 = load i32, i32* %8, align 4
  %115 = or i32 %114, 128
  %116 = and i32 %115, 191
  %117 = trunc i32 %116 to i8
  %118 = load i8**, i8*** %7, align 8
  %119 = load i8*, i8** %118, align 8
  %120 = load i8, i8* %12, align 1
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  store i8 %117, i8* %122, align 1
  %123 = load i32, i32* %8, align 4
  %124 = ashr i32 %123, 6
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %113
  %126 = load i8, i8* %12, align 1
  %127 = add i8 %126, -1
  store i8 %127, i8* %12, align 1
  br label %109

128:                                              ; preds = %109
  %129 = load i8, i8* %11, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp sgt i32 %130, 1
  br i1 %131, label %132, label %142

132:                                              ; preds = %128
  %133 = load i32, i32* %8, align 4
  %134 = load i8, i8* %14, align 1
  %135 = zext i8 %134 to i32
  %136 = or i32 %133, %135
  %137 = and i32 %136, 255
  %138 = trunc i32 %137 to i8
  %139 = load i8**, i8*** %7, align 8
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 0
  store i8 %138, i8* %141, align 1
  br label %149

142:                                              ; preds = %128
  %143 = load i32, i32* %8, align 4
  %144 = and i32 %143, 127
  %145 = trunc i32 %144 to i8
  %146 = load i8**, i8*** %7, align 8
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  store i8 %145, i8* %148, align 1
  br label %149

149:                                              ; preds = %142, %132
  %150 = load i8, i8* %11, align 1
  %151 = zext i8 %150 to i32
  %152 = load i8**, i8*** %7, align 8
  %153 = load i8*, i8** %152, align 8
  %154 = sext i32 %151 to i64
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8* %155, i8** %152, align 8
  %156 = load i8, i8* %13, align 1
  store i8 %156, i8* %4, align 1
  br label %158

157:                                              ; preds = %100, %73, %63, %50, %34, %24
  store i8 0, i8* %4, align 1
  br label %158

158:                                              ; preds = %157, %149
  %159 = load i8, i8* %4, align 1
  ret i8 %159
}

declare dso_local i32 @parse_hex4(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
