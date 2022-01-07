; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/compat_files/extr_compat_ctype.c_strtoull.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/compat_files/extr_compat_ctype.c_strtoull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULLONG_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strtoull(i8* noalias %0, i8** noalias %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %7, align 8
  br label %15

15:                                               ; preds = %19, %3
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %7, align 8
  %18 = load i8, i8* %16, align 1
  store i8 %18, i8* %9, align 1
  br label %19

19:                                               ; preds = %15
  %20 = load i8, i8* %9, align 1
  %21 = call i64 @isspace(i8 zeroext %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %15, label %23

23:                                               ; preds = %19
  %24 = load i8, i8* %9, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 45
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  store i32 1, i32* %11, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %7, align 8
  %30 = load i8, i8* %28, align 1
  store i8 %30, i8* %9, align 1
  br label %40

31:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  %32 = load i8, i8* %9, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 43
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %7, align 8
  %38 = load i8, i8* %36, align 1
  store i8 %38, i8* %9, align 1
  br label %39

39:                                               ; preds = %35, %31
  br label %40

40:                                               ; preds = %39, %27
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 16
  br i1 %45, label %46, label %66

46:                                               ; preds = %43, %40
  %47 = load i8, i8* %9, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 48
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 120
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %7, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 88
  br i1 %59, label %60, label %66

60:                                               ; preds = %55, %50
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %9, align 1
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  store i8* %65, i8** %7, align 8
  store i32 16, i32* %6, align 4
  br label %66

66:                                               ; preds = %60, %55, %46, %43
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i8, i8* %9, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 48
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 8, i32 10
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %69, %66
  store i32 0, i32* %12, align 4
  store i64 0, i64* %8, align 8
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = icmp sgt i32 %79, 36
  br i1 %80, label %81, label %82

81:                                               ; preds = %78, %75
  br label %180

82:                                               ; preds = %78
  %83 = load i32, i32* @ULLONG_MAX, align 4
  %84 = load i32, i32* %6, align 4
  %85 = sdiv i32 %83, %84
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %10, align 8
  %87 = load i32, i32* @ULLONG_MAX, align 4
  %88 = load i32, i32* %6, align 4
  %89 = srem i32 %87, %88
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %165, %82
  %91 = load i8, i8* %9, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp sge i32 %92, 48
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load i8, i8* %9, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp sle i32 %96, 57
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i8, i8* %9, align 1
  %100 = sext i8 %99 to i32
  %101 = sub nsw i32 %100, 48
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %9, align 1
  br label %132

103:                                              ; preds = %94, %90
  %104 = load i8, i8* %9, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp sge i32 %105, 65
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = load i8, i8* %9, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp sle i32 %109, 90
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load i8, i8* %9, align 1
  %113 = sext i8 %112 to i32
  %114 = sub nsw i32 %113, 55
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %9, align 1
  br label %131

116:                                              ; preds = %107, %103
  %117 = load i8, i8* %9, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp sge i32 %118, 97
  br i1 %119, label %120, label %129

120:                                              ; preds = %116
  %121 = load i8, i8* %9, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp sle i32 %122, 122
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i8, i8* %9, align 1
  %126 = sext i8 %125 to i32
  %127 = sub nsw i32 %126, 87
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %9, align 1
  br label %130

129:                                              ; preds = %120, %116
  br label %169

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %111
  br label %132

132:                                              ; preds = %131, %98
  %133 = load i8, i8* %9, align 1
  %134 = sext i8 %133 to i32
  %135 = load i32, i32* %6, align 4
  %136 = icmp sge i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %169

138:                                              ; preds = %132
  %139 = load i32, i32* %12, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %154, label %141

141:                                              ; preds = %138
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* %10, align 8
  %144 = icmp ugt i64 %142, %143
  br i1 %144, label %154, label %145

145:                                              ; preds = %141
  %146 = load i64, i64* %8, align 8
  %147 = load i64, i64* %10, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = load i8, i8* %9, align 1
  %151 = sext i8 %150 to i32
  %152 = load i32, i32* %13, align 4
  %153 = icmp sgt i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %149, %141, %138
  store i32 -1, i32* %12, align 4
  br label %164

155:                                              ; preds = %149, %145
  store i32 1, i32* %12, align 4
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = load i64, i64* %8, align 8
  %159 = mul i64 %158, %157
  store i64 %159, i64* %8, align 8
  %160 = load i8, i8* %9, align 1
  %161 = sext i8 %160 to i64
  %162 = load i64, i64* %8, align 8
  %163 = add i64 %162, %161
  store i64 %163, i64* %8, align 8
  br label %164

164:                                              ; preds = %155, %154
  br label %165

165:                                              ; preds = %164
  %166 = load i8*, i8** %7, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %7, align 8
  %168 = load i8, i8* %166, align 1
  store i8 %168, i8* %9, align 1
  br label %90

169:                                              ; preds = %137, %129
  %170 = load i32, i32* %12, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load i32, i32* @ULLONG_MAX, align 4
  %174 = sext i32 %173 to i64
  store i64 %174, i64* %8, align 8
  %175 = load i32, i32* @ERANGE, align 4
  store i32 %175, i32* @errno, align 4
  br label %190

176:                                              ; preds = %169
  %177 = load i32, i32* %12, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %176
  br label %180

180:                                              ; preds = %179, %81
  %181 = load i32, i32* @EINVAL, align 4
  store i32 %181, i32* @errno, align 4
  br label %189

182:                                              ; preds = %176
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i64, i64* %8, align 8
  %187 = sub i64 0, %186
  store i64 %187, i64* %8, align 8
  br label %188

188:                                              ; preds = %185, %182
  br label %189

189:                                              ; preds = %188, %180
  br label %190

190:                                              ; preds = %189, %172
  %191 = load i8**, i8*** %5, align 8
  %192 = icmp ne i8** %191, null
  br i1 %192, label %193, label %204

193:                                              ; preds = %190
  %194 = load i32, i32* %12, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i8*, i8** %7, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 -1
  br label %201

199:                                              ; preds = %193
  %200 = load i8*, i8** %4, align 8
  br label %201

201:                                              ; preds = %199, %196
  %202 = phi i8* [ %198, %196 ], [ %200, %199 ]
  %203 = load i8**, i8*** %5, align 8
  store i8* %202, i8** %203, align 8
  br label %204

204:                                              ; preds = %201, %190
  %205 = load i64, i64* %8, align 8
  ret i64 %205
}

declare dso_local i64 @isspace(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
