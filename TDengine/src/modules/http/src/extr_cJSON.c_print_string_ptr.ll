; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_cJSON.c_print_string_ptr.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_cJSON.c_print_string_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"u%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @print_string_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_string_ptr(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %160

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load i32*, i32** %5, align 8
  %19 = call i8* @ensure(i32* %18, i32 3)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %160

23:                                               ; preds = %17
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @strcpy(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %160

26:                                               ; preds = %14
  %27 = load i8*, i8** %4, align 8
  store i8* %27, i8** %6, align 8
  br label %28

28:                                               ; preds = %49, %26
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  switch i32 %35, label %39 [
    i32 34, label %36
    i32 92, label %36
    i32 8, label %36
    i32 12, label %36
    i32 10, label %36
    i32 13, label %36
    i32 9, label %36
  ]

36:                                               ; preds = %32, %32, %32, %32, %32, %32, %32
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %10, align 8
  br label %48

39:                                               ; preds = %32
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp slt i32 %42, 32
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 5
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %44, %39
  br label %48

48:                                               ; preds = %47, %36
  br label %49

49:                                               ; preds = %48
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %6, align 8
  br label %28

52:                                               ; preds = %28
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %57, %58
  store i64 %59, i64* %9, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %61, 3
  %63 = trunc i64 %62 to i32
  %64 = call i8* @ensure(i32* %60, i32 %63)
  store i8* %64, i8** %7, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %160

68:                                               ; preds = %52
  %69 = load i64, i64* %10, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 34, i8* %73, align 1
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8*, i8** %4, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @memcpy(i8* %75, i8* %76, i64 %77)
  %79 = load i8*, i8** %7, align 8
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, 1
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8 34, i8* %82, align 1
  %83 = load i8*, i8** %7, align 8
  %84 = load i64, i64* %9, align 8
  %85 = add i64 %84, 2
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  store i8 0, i8* %86, align 1
  store i32 1, i32* %3, align 4
  br label %160

87:                                               ; preds = %68
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  store i8 34, i8* %89, align 1
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  store i8* %91, i8** %8, align 8
  %92 = load i8*, i8** %4, align 8
  store i8* %92, i8** %6, align 8
  br label %93

93:                                               ; preds = %146, %87
  %94 = load i8*, i8** %6, align 8
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %151

98:                                               ; preds = %93
  %99 = load i8*, i8** %6, align 8
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp sgt i32 %101, 31
  br i1 %102, label %103, label %117

103:                                              ; preds = %98
  %104 = load i8*, i8** %6, align 8
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp ne i32 %106, 34
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load i8*, i8** %6, align 8
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp ne i32 %111, 92
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i8*, i8** %6, align 8
  %115 = load i8, i8* %114, align 1
  %116 = load i8*, i8** %8, align 8
  store i8 %115, i8* %116, align 1
  br label %145

117:                                              ; preds = %108, %103, %98
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %8, align 8
  store i8 92, i8* %118, align 1
  %120 = load i8*, i8** %6, align 8
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  switch i32 %122, label %137 [
    i32 92, label %123
    i32 34, label %125
    i32 8, label %127
    i32 12, label %129
    i32 10, label %131
    i32 13, label %133
    i32 9, label %135
  ]

123:                                              ; preds = %117
  %124 = load i8*, i8** %8, align 8
  store i8 92, i8* %124, align 1
  br label %144

125:                                              ; preds = %117
  %126 = load i8*, i8** %8, align 8
  store i8 34, i8* %126, align 1
  br label %144

127:                                              ; preds = %117
  %128 = load i8*, i8** %8, align 8
  store i8 98, i8* %128, align 1
  br label %144

129:                                              ; preds = %117
  %130 = load i8*, i8** %8, align 8
  store i8 102, i8* %130, align 1
  br label %144

131:                                              ; preds = %117
  %132 = load i8*, i8** %8, align 8
  store i8 110, i8* %132, align 1
  br label %144

133:                                              ; preds = %117
  %134 = load i8*, i8** %8, align 8
  store i8 114, i8* %134, align 1
  br label %144

135:                                              ; preds = %117
  %136 = load i8*, i8** %8, align 8
  store i8 116, i8* %136, align 1
  br label %144

137:                                              ; preds = %117
  %138 = load i8*, i8** %8, align 8
  %139 = load i8*, i8** %6, align 8
  %140 = load i8, i8* %139, align 1
  %141 = call i32 @sprintf(i8* %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %140)
  %142 = load i8*, i8** %8, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 4
  store i8* %143, i8** %8, align 8
  br label %144

144:                                              ; preds = %137, %135, %133, %131, %129, %127, %125, %123
  br label %145

145:                                              ; preds = %144, %113
  br label %146

146:                                              ; preds = %145
  %147 = load i8*, i8** %6, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %6, align 8
  %149 = load i8*, i8** %8, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %8, align 8
  br label %93

151:                                              ; preds = %93
  %152 = load i8*, i8** %7, align 8
  %153 = load i64, i64* %9, align 8
  %154 = add i64 %153, 1
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  store i8 34, i8* %155, align 1
  %156 = load i8*, i8** %7, align 8
  %157 = load i64, i64* %9, align 8
  %158 = add i64 %157, 2
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  store i8 0, i8* %159, align 1
  store i32 1, i32* %3, align 4
  br label %160

160:                                              ; preds = %151, %71, %67, %23, %22, %13
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i8* @ensure(i32*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
