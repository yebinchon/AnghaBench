; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_util.c_malloc_strtoumax.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_util.c_malloc_strtoumax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@UINTMAX_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @malloc_strtoumax(i8* noalias %0, i8** noalias %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %11, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 36
  br i1 %22, label %23, label %28

23:                                               ; preds = %20, %17, %3
  %24 = load i8*, i8** %11, align 8
  store i8* %24, i8** %12, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = call i32 @set_errno(i32 %25)
  %27 = load i32, i32* @UINTMAX_MAX, align 4
  store i32 %27, i32* %7, align 4
  br label %182

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %28, %42
  %31 = load i8*, i8** %11, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %41 [
    i32 9, label %34
    i32 10, label %34
    i32 11, label %34
    i32 12, label %34
    i32 13, label %34
    i32 32, label %34
    i32 45, label %37
    i32 43, label %38
  ]

34:                                               ; preds = %30, %30, %30, %30, %30, %30
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %11, align 8
  br label %42

37:                                               ; preds = %30
  store i32 1, i32* %10, align 4
  br label %38

38:                                               ; preds = %30, %37
  %39 = load i8*, i8** %11, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %11, align 8
  br label %41

41:                                               ; preds = %30, %38
  br label %43

42:                                               ; preds = %34
  br label %30

43:                                               ; preds = %41
  %44 = load i8*, i8** %11, align 8
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 48
  br i1 %48, label %49, label %87

49:                                               ; preds = %43
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  switch i32 %53, label %83 [
    i32 48, label %54
    i32 49, label %54
    i32 50, label %54
    i32 51, label %54
    i32 52, label %54
    i32 53, label %54
    i32 54, label %54
    i32 55, label %54
    i32 88, label %65
    i32 120, label %65
  ]

54:                                               ; preds = %49, %49, %49, %49, %49, %49, %49, %49
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 8, i32* %9, align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 8
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %11, align 8
  br label %64

64:                                               ; preds = %61, %58
  br label %86

65:                                               ; preds = %49, %49
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  switch i32 %69, label %81 [
    i32 48, label %70
    i32 49, label %70
    i32 50, label %70
    i32 51, label %70
    i32 52, label %70
    i32 53, label %70
    i32 54, label %70
    i32 55, label %70
    i32 56, label %70
    i32 57, label %70
    i32 65, label %70
    i32 66, label %70
    i32 67, label %70
    i32 68, label %70
    i32 69, label %70
    i32 70, label %70
    i32 97, label %70
    i32 98, label %70
    i32 99, label %70
    i32 100, label %70
    i32 101, label %70
    i32 102, label %70
  ]

70:                                               ; preds = %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 16, i32* %9, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 16
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i8*, i8** %11, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  store i8* %79, i8** %11, align 8
  br label %80

80:                                               ; preds = %77, %74
  br label %82

81:                                               ; preds = %65
  br label %82

82:                                               ; preds = %81, %80
  br label %86

83:                                               ; preds = %49
  %84 = load i8*, i8** %11, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %11, align 8
  store i32 0, i32* %7, align 4
  br label %182

86:                                               ; preds = %82, %64
  br label %87

87:                                               ; preds = %86, %43
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 10, i32* %9, align 4
  br label %91

91:                                               ; preds = %90, %87
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %164, %91
  %93 = load i8*, i8** %11, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp sge i32 %95, 48
  br i1 %96, label %97, label %109

97:                                               ; preds = %92
  %98 = load i8*, i8** %11, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp sle i32 %100, 57
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load i8*, i8** %11, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = sub nsw i32 %105, 48
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %147, label %109

109:                                              ; preds = %102, %97, %92
  %110 = load i8*, i8** %11, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp sge i32 %112, 65
  br i1 %113, label %114, label %127

114:                                              ; preds = %109
  %115 = load i8*, i8** %11, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp sle i32 %117, 90
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load i8*, i8** %11, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = add nsw i32 10, %122
  %124 = sub nsw i32 %123, 65
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %147, label %127

127:                                              ; preds = %119, %114, %109
  %128 = load i8*, i8** %11, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp sge i32 %130, 97
  br i1 %131, label %132, label %145

132:                                              ; preds = %127
  %133 = load i8*, i8** %11, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp sle i32 %135, 122
  br i1 %136, label %137, label %145

137:                                              ; preds = %132
  %138 = load i8*, i8** %11, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = add nsw i32 10, %140
  %142 = sub nsw i32 %141, 97
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp ult i32 %142, %143
  br label %145

145:                                              ; preds = %137, %132, %127
  %146 = phi i1 [ false, %132 ], [ false, %127 ], [ %144, %137 ]
  br label %147

147:                                              ; preds = %145, %119, %102
  %148 = phi i1 [ true, %119 ], [ true, %102 ], [ %146, %145 ]
  br i1 %148, label %149, label %167

149:                                              ; preds = %147
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %7, align 4
  %153 = mul i32 %152, %151
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %7, align 4
  %156 = add i32 %155, %154
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %149
  %161 = load i32, i32* @ERANGE, align 4
  %162 = call i32 @set_errno(i32 %161)
  %163 = load i32, i32* @UINTMAX_MAX, align 4
  store i32 %163, i32* %7, align 4
  br label %182

164:                                              ; preds = %149
  %165 = load i8*, i8** %11, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %11, align 8
  br label %92

167:                                              ; preds = %147
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32, i32* %7, align 4
  %172 = sub i32 0, %171
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %170, %167
  %174 = load i8*, i8** %11, align 8
  %175 = load i8*, i8** %12, align 8
  %176 = icmp eq i8* %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = load i32, i32* @EINVAL, align 4
  %179 = call i32 @set_errno(i32 %178)
  %180 = load i32, i32* @UINTMAX_MAX, align 4
  store i32 %180, i32* %7, align 4
  br label %182

181:                                              ; preds = %173
  br label %182

182:                                              ; preds = %181, %177, %160, %83, %23
  %183 = load i8**, i8*** %5, align 8
  %184 = icmp ne i8** %183, null
  br i1 %184, label %185, label %196

185:                                              ; preds = %182
  %186 = load i8*, i8** %11, align 8
  %187 = load i8*, i8** %12, align 8
  %188 = icmp eq i8* %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = load i8*, i8** %4, align 8
  %191 = load i8**, i8*** %5, align 8
  store i8* %190, i8** %191, align 8
  br label %195

192:                                              ; preds = %185
  %193 = load i8*, i8** %11, align 8
  %194 = load i8**, i8*** %5, align 8
  store i8* %193, i8** %194, align 8
  br label %195

195:                                              ; preds = %192, %189
  br label %196

196:                                              ; preds = %195, %182
  %197 = load i32, i32* %7, align 4
  ret i32 %197
}

declare dso_local i32 @set_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
