; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdlib/extr_strtoul.c_strtoul.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdlib/extr_strtoul.c_strtoul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULONG_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strtoul(i8* %0, i8** %1, i32 %2) #0 {
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
  br label %70

54:                                               ; preds = %47, %43
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %58, 2
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ugt i32 %60, 34
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i64 0, i64* %4, align 8
  br label %199

63:                                               ; preds = %57
  br label %94

64:                                               ; preds = %54
  %65 = load i8*, i8** %12, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 48
  br i1 %68, label %69, label %92

69:                                               ; preds = %64
  store i32 8, i32* %7, align 4
  br label %70

70:                                               ; preds = %69, %53
  %71 = load i8*, i8** %12, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 120
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load i8*, i8** %12, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 88
  br i1 %81, label %82, label %91

82:                                               ; preds = %76, %70
  %83 = load i8*, i8** %12, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  %85 = load i8, i8* %84, align 1
  %86 = call i64 @isxdigit(i8 signext %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i8*, i8** %12, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  store i8* %90, i8** %12, align 8
  store i32 16, i32* %7, align 4
  br label %91

91:                                               ; preds = %88, %82, %76
  br label %93

92:                                               ; preds = %64
  store i32 10, i32* %7, align 4
  br label %93

93:                                               ; preds = %92, %91
  br label %94

94:                                               ; preds = %93, %63
  br label %95

95:                                               ; preds = %163, %94
  %96 = load i8*, i8** %12, align 8
  %97 = load i8, i8* %96, align 1
  %98 = icmp ne i8 %97, 0
  br i1 %98, label %99, label %171

99:                                               ; preds = %95
  %100 = load i8*, i8** %12, align 8
  %101 = load i8, i8* %100, align 1
  store i8 %101, i8* %14, align 1
  %102 = load i8, i8* %14, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp sge i32 %103, 97
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load i8, i8* %14, align 1
  %107 = zext i8 %106 to i32
  %108 = sub nsw i32 %107, 97
  %109 = add nsw i32 %108, 10
  br label %132

110:                                              ; preds = %99
  %111 = load i8, i8* %14, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp sge i32 %112, 65
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i8, i8* %14, align 1
  %116 = zext i8 %115 to i32
  %117 = sub nsw i32 %116, 65
  %118 = add nsw i32 %117, 10
  br label %130

119:                                              ; preds = %110
  %120 = load i8, i8* %14, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp sle i32 %121, 57
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i8, i8* %14, align 1
  %125 = zext i8 %124 to i32
  %126 = sub nsw i32 %125, 48
  br label %128

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127, %123
  %129 = phi i32 [ %126, %123 ], [ 255, %127 ]
  br label %130

130:                                              ; preds = %128, %114
  %131 = phi i32 [ %118, %114 ], [ %129, %128 ]
  br label %132

132:                                              ; preds = %130, %105
  %133 = phi i32 [ %109, %105 ], [ %131, %130 ]
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %14, align 1
  %135 = load i8, i8* %14, align 1
  %136 = zext i8 %135 to i32
  %137 = load i32, i32* %7, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %171

140:                                              ; preds = %132
  %141 = load i64, i64* %10, align 8
  %142 = and i64 %141, 255
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = mul i64 %142, %144
  %146 = load i8, i8* %14, align 1
  %147 = zext i8 %146 to i64
  %148 = add i64 %145, %147
  store i64 %148, i64* %15, align 8
  %149 = load i64, i64* %10, align 8
  %150 = lshr i64 %149, 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = mul i64 %150, %152
  %154 = load i64, i64* %15, align 8
  %155 = lshr i64 %154, 8
  %156 = add i64 %153, %155
  store i64 %156, i64* %16, align 8
  %157 = load i64, i64* %16, align 8
  %158 = load i32, i32* @ULONG_MAX, align 4
  %159 = ashr i32 %158, 8
  %160 = sext i32 %159 to i64
  %161 = icmp ugt i64 %157, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %140
  store i32 1, i32* %9, align 4
  br label %163

163:                                              ; preds = %162, %140
  %164 = load i64, i64* %16, align 8
  %165 = shl i64 %164, 8
  %166 = load i64, i64* %15, align 8
  %167 = and i64 %166, 255
  %168 = add i64 %165, %167
  store i64 %168, i64* %10, align 8
  %169 = load i8*, i8** %12, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %12, align 8
  br label %95

171:                                              ; preds = %139, %95
  %172 = load i8*, i8** %12, align 8
  %173 = load i8*, i8** %11, align 8
  %174 = icmp eq i8* %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = load i8*, i8** %5, align 8
  store i8* %176, i8** %12, align 8
  store i64 0, i64* %10, align 8
  br label %177

177:                                              ; preds = %175, %171
  %178 = load i8**, i8*** %6, align 8
  %179 = icmp ne i8** %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i8*, i8** %12, align 8
  %182 = load i8**, i8*** %6, align 8
  store i8* %181, i8** %182, align 8
  br label %183

183:                                              ; preds = %180, %177
  %184 = load i32, i32* %9, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i32, i32* @ULONG_MAX, align 4
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %4, align 8
  br label %199

189:                                              ; preds = %183
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i64, i64* %10, align 8
  %194 = sub i64 0, %193
  br label %197

195:                                              ; preds = %189
  %196 = load i64, i64* %10, align 8
  br label %197

197:                                              ; preds = %195, %192
  %198 = phi i64 [ %194, %192 ], [ %196, %195 ]
  store i64 %198, i64* %4, align 8
  br label %199

199:                                              ; preds = %197, %186, %62
  %200 = load i64, i64* %4, align 8
  ret i64 %200
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @isxdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
