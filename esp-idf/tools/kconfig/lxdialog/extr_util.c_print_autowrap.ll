; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/lxdialog/extr_util.c_print_autowrap.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/lxdialog/extr_util.c_print_autowrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0A \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_autowrap(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %23 = load i32, i32* @MAX_LEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %17, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %18, align 8
  store i8* null, i8** %22, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strcpy(i8* %27, i8* %28)
  %30 = call i32 @strlen(i8* %27)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 %33, 2
  %35 = sub nsw i32 %32, %34
  %36 = icmp sle i32 %31, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %5
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %14, align 4
  %42 = sub nsw i32 %40, %41
  %43 = sdiv i32 %42, 2
  %44 = call i32 @wmove(i32* %38, i32 %39, i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @waddstr(i32* %45, i8* %27)
  br label %169

47:                                               ; preds = %5
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %13, align 4
  store i32 1, i32* %11, align 4
  store i8* %27, i8** %19, align 8
  br label %50

50:                                               ; preds = %166, %47
  %51 = load i8*, i8** %19, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i8*, i8** %19, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %53, %50
  %59 = phi i1 [ false, %50 ], [ %57, %53 ]
  br i1 %59, label %60, label %168

60:                                               ; preds = %58
  %61 = load i8*, i8** %19, align 8
  %62 = call i8* @strpbrk(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %62, i8** %20, align 8
  %63 = load i8*, i8** %20, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i8*, i8** %20, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 10
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i8*, i8** %20, align 8
  store i8* %71, i8** %22, align 8
  br label %72

72:                                               ; preds = %70, %65, %60
  %73 = load i8*, i8** %20, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i8*, i8** %20, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %20, align 8
  store i8 0, i8* %76, align 1
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %12, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %15, align 4
  %82 = load i8*, i8** %19, align 8
  %83 = call i32 @strlen(i8* %82)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %121, label %87

87:                                               ; preds = %78
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %125

90:                                               ; preds = %87
  %91 = load i32, i32* %16, align 4
  %92 = icmp slt i32 %91, 4
  br i1 %92, label %93, label %125

93:                                               ; preds = %90
  %94 = load i8*, i8** %20, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %125

96:                                               ; preds = %93
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, 1
  %99 = load i8*, i8** %20, align 8
  %100 = call i32 @strlen(i8* %99)
  %101 = add nsw i32 %98, %100
  %102 = load i32, i32* %15, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %125

104:                                              ; preds = %96
  %105 = load i8*, i8** %20, align 8
  %106 = call i8* @strpbrk(i8* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %106, i8** %21, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %121

108:                                              ; preds = %104
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = load i8*, i8** %21, align 8
  %113 = load i8*, i8** %20, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = add nsw i64 %111, %116
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = icmp sgt i64 %117, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %108, %104, %78
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %121, %108, %96, %93, %90, %87
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @wmove(i32* %126, i32 %127, i32 %128)
  %130 = load i32*, i32** %6, align 8
  %131 = load i8*, i8** %19, align 8
  %132 = call i32 @waddstr(i32* %130, i8* %131)
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @getyx(i32* %133, i32 %134, i32 %135)
  %137 = load i8*, i8** %22, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %125
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %10, align 4
  store i32 %142, i32* %12, align 4
  store i8* null, i8** %22, align 8
  br label %146

143:                                              ; preds = %125
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %143, %139
  %147 = load i8*, i8** %20, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %165

149:                                              ; preds = %146
  %150 = load i8*, i8** %20, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 32
  br i1 %153, label %154, label %165

154:                                              ; preds = %149
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %12, align 4
  br label %157

157:                                              ; preds = %163, %154
  %158 = load i8*, i8** %20, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %20, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 32
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %157

164:                                              ; preds = %157
  store i32 1, i32* %11, align 4
  br label %166

165:                                              ; preds = %149, %146
  store i32 0, i32* %11, align 4
  br label %166

166:                                              ; preds = %165, %164
  %167 = load i8*, i8** %20, align 8
  store i8* %167, i8** %19, align 8
  br label %50

168:                                              ; preds = %58
  br label %169

169:                                              ; preds = %168, %37
  %170 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %170)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @wmove(i32*, i32, i32) #2

declare dso_local i32 @waddstr(i32*, i8*) #2

declare dso_local i8* @strpbrk(i8*, i8*) #2

declare dso_local i32 @getyx(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
