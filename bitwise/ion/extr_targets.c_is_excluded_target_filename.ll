; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_targets.c_is_excluded_target_filename.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_targets.c_is_excluded_target_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@target_arch = common dso_local global i32 0, align 4
@target_os = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_excluded_target_filename(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %33, %1
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = icmp ne i8* %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 -1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 95
  br label %31

31:                                               ; preds = %25, %21
  %32 = phi i1 [ false, %21 ], [ %30, %25 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 -1
  store i8* %35, i8** %5, align 8
  br label %21

36:                                               ; preds = %31
  %37 = load i32, i32* @MAX_PATH, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %6, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %7, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = icmp eq i8* %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 0, i8* %45, align 16
  br label %63

46:                                               ; preds = %36
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memcpy(i8* %40, i8* %47, i32 %53)
  %55 = load i8*, i8** %4, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = getelementptr inbounds i8, i8* %40, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 -1
  store i8* %62, i8** %5, align 8
  br label %63

63:                                               ; preds = %46, %44
  %64 = load i8*, i8** %5, align 8
  store i8* %64, i8** %8, align 8
  br label %65

65:                                               ; preds = %77, %63
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %3, align 8
  %68 = icmp ne i8* %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 -1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 95
  br label %75

75:                                               ; preds = %69, %65
  %76 = phi i1 [ false, %65 ], [ %74, %69 ]
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 -1
  store i8* %79, i8** %8, align 8
  br label %65

80:                                               ; preds = %75
  %81 = load i32, i32* @MAX_PATH, align 4
  %82 = zext i32 %81 to i64
  %83 = alloca i8, i64 %82, align 16
  store i64 %82, i64* %9, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i8*, i8** %3, align 8
  %86 = icmp eq i8* %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = getelementptr inbounds i8, i8* %83, i64 0
  store i8 0, i8* %88, align 16
  br label %104

89:                                               ; preds = %80
  %90 = load i8*, i8** %8, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = call i32 @memcpy(i8* %83, i8* %90, i32 %96)
  %98 = load i8*, i8** %5, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = getelementptr inbounds i8, i8* %83, i64 %102
  store i8 0, i8* %103, align 1
  br label %104

104:                                              ; preds = %89, %87
  %105 = call i32 @get_os(i8* %40)
  store i32 %105, i32* %10, align 4
  %106 = call i32 @get_arch(i8* %40)
  store i32 %106, i32* %11, align 4
  %107 = call i32 @get_os(i8* %83)
  store i32 %107, i32* %12, align 4
  %108 = call i32 @get_arch(i8* %83)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, -1
  br i1 %110, label %111, label %125

111:                                              ; preds = %104
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, -1
  br i1 %113, label %114, label %125

114:                                              ; preds = %111
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @target_arch, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @target_os, align 4
  %121 = icmp ne i32 %119, %120
  br label %122

122:                                              ; preds = %118, %114
  %123 = phi i1 [ true, %114 ], [ %121, %118 ]
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %159

125:                                              ; preds = %111, %104
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, -1
  br i1 %127, label %128, label %142

128:                                              ; preds = %125
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, -1
  br i1 %130, label %131, label %142

131:                                              ; preds = %128
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* @target_arch, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @target_os, align 4
  %138 = icmp ne i32 %136, %137
  br label %139

139:                                              ; preds = %135, %131
  %140 = phi i1 [ true, %131 ], [ %138, %135 ]
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %159

142:                                              ; preds = %128, %125
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, -1
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @target_os, align 4
  %148 = icmp ne i32 %146, %147
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %159

150:                                              ; preds = %142
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, -1
  br i1 %152, label %153, label %158

153:                                              ; preds = %150
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @target_arch, align 4
  %156 = icmp ne i32 %154, %155
  %157 = zext i1 %156 to i32
  store i32 %157, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %159

158:                                              ; preds = %150
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %159

159:                                              ; preds = %158, %153, %145, %139, %122
  %160 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @get_os(i8*) #1

declare dso_local i32 @get_arch(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
