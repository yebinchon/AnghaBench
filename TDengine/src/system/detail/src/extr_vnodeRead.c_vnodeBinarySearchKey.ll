; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeRead.c_vnodeBinarySearchKey.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeRead.c_vnodeBinarySearchKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeBinarySearchKey(i8* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %165

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to i64*
  store i64* %20, i64** %14, align 8
  store i32 0, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %91

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %89
  %27 = load i64, i64* %8, align 8
  %28 = load i64*, i64** %14, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %27, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %165

36:                                               ; preds = %26
  %37 = load i64, i64* %8, align 8
  %38 = load i64*, i64** %14, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %37, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %5, align 4
  br label %165

46:                                               ; preds = %36
  %47 = load i64, i64* %8, align 8
  %48 = load i64*, i64** %14, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %47, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %165

57:                                               ; preds = %46
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 %58, %59
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = ashr i32 %62, 1
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %12, align 4
  %66 = load i64, i64* %8, align 8
  %67 = load i64*, i64** %14, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %66, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %57
  %74 = load i32, i32* %12, align 4
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %89

76:                                               ; preds = %57
  %77 = load i64, i64* %8, align 8
  %78 = load i64*, i64** %14, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %77, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %88

87:                                               ; preds = %76
  br label %90

88:                                               ; preds = %84
  br label %89

89:                                               ; preds = %88, %73
  br label %26

90:                                               ; preds = %87
  br label %163

91:                                               ; preds = %18
  br label %92

92:                                               ; preds = %91, %161
  %93 = load i64, i64* %8, align 8
  %94 = load i64*, i64** %14, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = icmp sle i64 %93, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %5, align 4
  br label %165

102:                                              ; preds = %92
  %103 = load i64, i64* %8, align 8
  %104 = load i64*, i64** %14, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %103, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %5, align 4
  br label %165

112:                                              ; preds = %102
  %113 = load i64, i64* %8, align 8
  %114 = load i64*, i64** %14, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %113, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %112
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i32 -1, i32* %5, align 4
  br label %165

127:                                              ; preds = %120
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %5, align 4
  br label %165

129:                                              ; preds = %112
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %10, align 4
  %132 = sub nsw i32 %130, %131
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = ashr i32 %134, 1
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %135, %136
  store i32 %137, i32* %12, align 4
  %138 = load i64, i64* %8, align 8
  %139 = load i64*, i64** %14, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = icmp slt i64 %138, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %129
  %146 = load i32, i32* %12, align 4
  %147 = sub nsw i32 %146, 1
  store i32 %147, i32* %11, align 4
  br label %161

148:                                              ; preds = %129
  %149 = load i64, i64* %8, align 8
  %150 = load i64*, i64** %14, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = icmp sgt i64 %149, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %148
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %160

159:                                              ; preds = %148
  br label %162

160:                                              ; preds = %156
  br label %161

161:                                              ; preds = %160, %145
  br label %92

162:                                              ; preds = %159
  br label %163

163:                                              ; preds = %162, %90
  %164 = load i32, i32* %12, align 4
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %163, %127, %126, %110, %100, %54, %44, %34, %17
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
