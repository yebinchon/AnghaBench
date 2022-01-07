; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdlib/extr_strtoull.c_strtoull.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdlib/extr_strtoull.c_strtoull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ULLONG_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strtoull(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %12, align 8
  br label %18

18:                                               ; preds = %23, %3
  %19 = load i8*, i8** %12, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @isspace(i8 signext %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %12, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %12, align 8
  br label %18

26:                                               ; preds = %18
  %27 = load i8*, i8** %12, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 45
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  store i32 1, i32* %8, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %12, align 8
  br label %43

34:                                               ; preds = %26
  %35 = load i8*, i8** %12, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 43
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i8*, i8** %12, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %12, align 8
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i8*, i8** %12, align 8
  store i8* %44, i8** %11, align 8
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 16
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i8*, i8** %12, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 48
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %71

54:                                               ; preds = %47, %43
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %58, 2
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ugt i32 %60, 34
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* @errno, align 4
  store i64 0, i64* %4, align 8
  br label %202

64:                                               ; preds = %57
  br label %95

65:                                               ; preds = %54
  %66 = load i8*, i8** %12, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 48
  br i1 %69, label %70, label %93

70:                                               ; preds = %65
  store i32 8, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %53
  %72 = load i8*, i8** %12, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 120
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load i8*, i8** %12, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 88
  br i1 %82, label %83, label %92

83:                                               ; preds = %77, %71
  %84 = load i8*, i8** %12, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  %86 = load i8, i8* %85, align 1
  %87 = call i64 @isxdigit(i8 signext %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i8*, i8** %12, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  store i8* %91, i8** %12, align 8
  store i32 16, i32* %7, align 4
  br label %92

92:                                               ; preds = %89, %83, %77
  br label %94

93:                                               ; preds = %65
  store i32 10, i32* %7, align 4
  br label %94

94:                                               ; preds = %93, %92
  br label %95

95:                                               ; preds = %94, %64
  br label %96

96:                                               ; preds = %164, %95
  %97 = load i8*, i8** %12, align 8
  %98 = load i8, i8* %97, align 1
  %99 = icmp ne i8 %98, 0
  br i1 %99, label %100, label %172

100:                                              ; preds = %96
  %101 = load i8*, i8** %12, align 8
  %102 = load i8, i8* %101, align 1
  store i8 %102, i8* %14, align 1
  %103 = load i8, i8* %14, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp sge i32 %104, 97
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load i8, i8* %14, align 1
  %108 = zext i8 %107 to i32
  %109 = sub nsw i32 %108, 97
  %110 = add nsw i32 %109, 10
  br label %133

111:                                              ; preds = %100
  %112 = load i8, i8* %14, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp sge i32 %113, 65
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load i8, i8* %14, align 1
  %117 = zext i8 %116 to i32
  %118 = sub nsw i32 %117, 65
  %119 = add nsw i32 %118, 10
  br label %131

120:                                              ; preds = %111
  %121 = load i8, i8* %14, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp sle i32 %122, 57
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i8, i8* %14, align 1
  %126 = zext i8 %125 to i32
  %127 = sub nsw i32 %126, 48
  br label %129

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128, %124
  %130 = phi i32 [ %127, %124 ], [ 255, %128 ]
  br label %131

131:                                              ; preds = %129, %115
  %132 = phi i32 [ %119, %115 ], [ %130, %129 ]
  br label %133

133:                                              ; preds = %131, %106
  %134 = phi i32 [ %110, %106 ], [ %132, %131 ]
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %14, align 1
  %136 = load i8, i8* %14, align 1
  %137 = zext i8 %136 to i32
  %138 = load i32, i32* %7, align 4
  %139 = icmp sge i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %172

141:                                              ; preds = %133
  %142 = load i64, i64* %10, align 8
  %143 = and i64 %142, 255
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = mul nsw i64 %143, %145
  %147 = load i8, i8* %14, align 1
  %148 = zext i8 %147 to i64
  %149 = add nsw i64 %146, %148
  store i64 %149, i64* %15, align 8
  %150 = load i64, i64* %10, align 8
  %151 = ashr i64 %150, 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = mul nsw i64 %151, %153
  %155 = load i64, i64* %15, align 8
  %156 = lshr i64 %155, 8
  %157 = add i64 %154, %156
  store i64 %157, i64* %16, align 8
  %158 = load i64, i64* %16, align 8
  %159 = load i32, i32* @ULLONG_MAX, align 4
  %160 = ashr i32 %159, 8
  %161 = sext i32 %160 to i64
  %162 = icmp ugt i64 %158, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %141
  store i32 1, i32* %9, align 4
  br label %164

164:                                              ; preds = %163, %141
  %165 = load i64, i64* %16, align 8
  %166 = shl i64 %165, 8
  %167 = load i64, i64* %15, align 8
  %168 = and i64 %167, 255
  %169 = add i64 %166, %168
  store i64 %169, i64* %10, align 8
  %170 = load i8*, i8** %12, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %12, align 8
  br label %96

172:                                              ; preds = %140, %96
  %173 = load i8*, i8** %12, align 8
  %174 = load i8*, i8** %11, align 8
  %175 = icmp eq i8* %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load i8*, i8** %5, align 8
  store i8* %177, i8** %12, align 8
  %178 = load i32, i32* @EINVAL, align 4
  store i32 %178, i32* @errno, align 4
  store i64 0, i64* %10, align 8
  br label %179

179:                                              ; preds = %176, %172
  %180 = load i8**, i8*** %6, align 8
  %181 = icmp ne i8** %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i8*, i8** %12, align 8
  %184 = load i8**, i8*** %6, align 8
  store i8* %183, i8** %184, align 8
  br label %185

185:                                              ; preds = %182, %179
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load i32, i32* @ERANGE, align 4
  store i32 %189, i32* @errno, align 4
  %190 = load i32, i32* @ULLONG_MAX, align 4
  %191 = sext i32 %190 to i64
  store i64 %191, i64* %4, align 8
  br label %202

192:                                              ; preds = %185
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i64, i64* %10, align 8
  %197 = sub nsw i64 0, %196
  br label %200

198:                                              ; preds = %192
  %199 = load i64, i64* %10, align 8
  br label %200

200:                                              ; preds = %198, %195
  %201 = phi i64 [ %197, %195 ], [ %199, %198 ]
  store i64 %201, i64* %4, align 8
  br label %202

202:                                              ; preds = %200, %188, %62
  %203 = load i64, i64* %4, align 8
  ret i64 %203
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @isxdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
