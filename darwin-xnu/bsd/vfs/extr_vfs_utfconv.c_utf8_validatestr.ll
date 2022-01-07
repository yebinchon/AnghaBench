; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_utfconv.c_utf8_validatestr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_utfconv.c_utf8_validatestr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@utf_extrabytes = common dso_local global i64* null, align 8
@SP_HALF_BASE = common dso_local global i32 0, align 4
@SP_HALF_SHIFT = common dso_local global i32 0, align 4
@SP_HIGH_FIRST = common dso_local global i32 0, align 4
@SP_HIGH_LAST = common dso_local global i32 0, align 4
@SP_HALF_MASK = common dso_local global i32 0, align 4
@SP_LOW_FIRST = common dso_local global i32 0, align 4
@SP_LOW_LAST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8_validatestr(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  br label %10

10:                                               ; preds = %192, %24, %2
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %11, -1
  store i64 %12, i64* %5, align 8
  %13 = icmp ugt i64 %11, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %4, align 8
  %17 = load i32, i32* %15, align 4
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %14, %10
  %20 = phi i1 [ false, %10 ], [ %18, %14 ]
  br i1 %20, label %21, label %193

21:                                               ; preds = %19
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %22, 128
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %10

25:                                               ; preds = %21
  %26 = load i64*, i64** @utf_extrabytes, align 8
  %27 = load i32, i32* %6, align 4
  %28 = lshr i32 %27, 3
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %194

36:                                               ; preds = %25
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %5, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %9, align 8
  switch i64 %40, label %191 [
    i64 1, label %41
    i64 2, label %64
    i64 3, label %115
  ]

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 %43, 6
  store i32 %44, i32* %7, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %4, align 8
  %47 = load i32, i32* %45, align 4
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = lshr i32 %48, 6
  %50 = icmp ne i32 %49, 2
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %194

52:                                               ; preds = %41
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = sub i64 %57, 12416
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 128
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %194

63:                                               ; preds = %52
  br label %192

64:                                               ; preds = %36
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = shl i32 %66, 6
  store i32 %67, i32* %7, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %4, align 8
  %70 = load i32, i32* %68, align 4
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = lshr i32 %71, 6
  %73 = icmp ne i32 %72, 2
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %194

75:                                               ; preds = %64
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = add i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = shl i32 %79, 6
  store i32 %80, i32* %7, align 4
  %81 = load i32*, i32** %4, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %4, align 8
  %83 = load i32, i32* %81, align 4
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = lshr i32 %84, 6
  %86 = icmp ne i32 %85, 2
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  br label %194

88:                                               ; preds = %75
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = add i32 %90, %89
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = sub i64 %93, 925824
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 2048
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %194

99:                                               ; preds = %88
  %100 = load i32, i32* %7, align 4
  %101 = icmp sge i32 %100, 55296
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = load i32, i32* %7, align 4
  %104 = icmp sle i32 %103, 57343
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %194

106:                                              ; preds = %102
  %107 = load i32, i32* %7, align 4
  %108 = icmp eq i32 %107, 65534
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %7, align 4
  %111 = icmp eq i32 %110, 65535
  br i1 %111, label %112, label %113

112:                                              ; preds = %109, %106
  br label %194

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %113, %99
  br label %192

115:                                              ; preds = %36
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = shl i32 %117, 6
  store i32 %118, i32* %7, align 4
  %119 = load i32*, i32** %4, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %4, align 8
  %121 = load i32, i32* %119, align 4
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = lshr i32 %122, 6
  %124 = icmp ne i32 %123, 2
  br i1 %124, label %125, label %126

125:                                              ; preds = %115
  br label %194

126:                                              ; preds = %115
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %7, align 4
  %129 = add i32 %128, %127
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = shl i32 %130, 6
  store i32 %131, i32* %7, align 4
  %132 = load i32*, i32** %4, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %4, align 8
  %134 = load i32, i32* %132, align 4
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = lshr i32 %135, 6
  %137 = icmp ne i32 %136, 2
  br i1 %137, label %138, label %139

138:                                              ; preds = %126
  br label %194

139:                                              ; preds = %126
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %7, align 4
  %142 = add i32 %141, %140
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = shl i32 %143, 6
  store i32 %144, i32* %7, align 4
  %145 = load i32*, i32** %4, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %4, align 8
  %147 = load i32, i32* %145, align 4
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = lshr i32 %148, 6
  %150 = icmp ne i32 %149, 2
  br i1 %150, label %151, label %152

151:                                              ; preds = %139
  br label %194

152:                                              ; preds = %139
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %7, align 4
  %155 = add i32 %154, %153
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* @SP_HALF_BASE, align 4
  %157 = sext i32 %156 to i64
  %158 = add i64 63447168, %157
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = sub i64 %160, %158
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @SP_HALF_SHIFT, align 4
  %165 = ashr i32 %163, %164
  %166 = load i32, i32* @SP_HIGH_FIRST, align 4
  %167 = add nsw i32 %165, %166
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @SP_HIGH_FIRST, align 4
  %170 = icmp ult i32 %168, %169
  br i1 %170, label %175, label %171

171:                                              ; preds = %152
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @SP_HIGH_LAST, align 4
  %174 = icmp ugt i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %171, %152
  br label %194

176:                                              ; preds = %171
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* @SP_HALF_MASK, align 4
  %179 = and i32 %177, %178
  %180 = load i32, i32* @SP_LOW_FIRST, align 4
  %181 = add nsw i32 %179, %180
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* @SP_LOW_FIRST, align 4
  %184 = icmp ult i32 %182, %183
  br i1 %184, label %189, label %185

185:                                              ; preds = %176
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* @SP_LOW_LAST, align 4
  %188 = icmp ugt i32 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %185, %176
  br label %194

190:                                              ; preds = %185
  br label %192

191:                                              ; preds = %36
  br label %194

192:                                              ; preds = %190, %114, %63
  br label %10

193:                                              ; preds = %19
  store i32 0, i32* %3, align 4
  br label %196

194:                                              ; preds = %191, %189, %175, %151, %138, %125, %112, %105, %98, %87, %74, %62, %51, %35
  %195 = load i32, i32* @EINVAL, align 4
  store i32 %195, i32* %3, align 4
  br label %196

196:                                              ; preds = %194, %193
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
