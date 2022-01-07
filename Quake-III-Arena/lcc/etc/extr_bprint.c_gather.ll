; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_bprint.c_gather.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_bprint.c_gather.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i8*, %struct.file*, i64, i64, i64, i64 }
%struct.func = type { i32 }

@PERM = common dso_local global i32 0, align 4
@filelist = common dso_local global %struct.file* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @gather to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gather() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8*], align 16
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.func*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = call i32 (...) @getd()
  store i32 %19, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %179

22:                                               ; preds = %0
  %23 = load i32, i32* %3, align 4
  %24 = getelementptr inbounds [64 x i8*], [64 x i8*]* %6, i64 0, i64 0
  %25 = call i32 @NELEMS(i8** %24)
  %26 = icmp slt i32 %23, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %70, %22
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %73

33:                                               ; preds = %29
  %34 = call i8* (...) @getstr()
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [64 x i8*], [64 x i8*]* %6, i64 0, i64 %36
  store i8* %34, i8** %37, align 8
  %38 = icmp eq i8* %34, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 -1, i32* %1, align 4
  br label %179

40:                                               ; preds = %33
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [64 x i8*], [64 x i8*]* %6, i64 0, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @findfile(i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %69, label %47

47:                                               ; preds = %40
  %48 = load %struct.file*, %struct.file** %7, align 8
  %49 = load i32, i32* @PERM, align 4
  %50 = call i32 @NEW(%struct.file* %48, i32 %49)
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [64 x i8*], [64 x i8*]* %6, i64 0, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.file*, %struct.file** %7, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.file*, %struct.file** %7, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load %struct.file*, %struct.file** %7, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 5
  store i64 0, i64* %60, align 8
  %61 = load %struct.file*, %struct.file** %7, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load %struct.file*, %struct.file** %7, align 8
  %64 = getelementptr inbounds %struct.file, %struct.file* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load %struct.file*, %struct.file** @filelist, align 8
  %66 = load %struct.file*, %struct.file** %7, align 8
  %67 = getelementptr inbounds %struct.file, %struct.file* %66, i32 0, i32 1
  store %struct.file* %65, %struct.file** %67, align 8
  %68 = load %struct.file*, %struct.file** %7, align 8
  store %struct.file* %68, %struct.file** @filelist, align 8
  br label %69

69:                                               ; preds = %47, %40
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %2, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %2, align 4
  br label %29

73:                                               ; preds = %29
  %74 = call i32 (...) @getd()
  store i32 %74, i32* %4, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 -1, i32* %1, align 4
  br label %179

77:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %135, %77
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %138

82:                                               ; preds = %78
  %83 = call i8* (...) @getstr()
  store i8* %83, i8** %9, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %97, label %85

85:                                               ; preds = %82
  %86 = call i32 (...) @getd()
  store i32 %86, i32* %11, align 4
  %87 = icmp sle i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %85
  %89 = call i32 (...) @getd()
  store i32 %89, i32* %12, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = call i32 (...) @getd()
  store i32 %92, i32* %13, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = call i32 (...) @getd()
  store i32 %95, i32* %14, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94, %91, %88, %85, %82
  store i32 -1, i32* %1, align 4
  br label %179

98:                                               ; preds = %94
  %99 = load i8*, i8** %9, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [64 x i8*], [64 x i8*]* %6, i64 0, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %14, align 4
  %108 = call %struct.func* @afunction(i8* %99, i8* %104, i32 %105, i32 %106, i32 %107)
  store %struct.func* %108, %struct.func** %8, align 8
  %109 = call i8* (...) @getstr()
  store i8* %109, i8** %9, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %120, label %111

111:                                              ; preds = %98
  %112 = call i8* (...) @getstr()
  store i8* %112, i8** %10, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = call i32 (...) @getd()
  store i32 %115, i32* %12, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = call i32 (...) @getd()
  store i32 %118, i32* %13, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117, %114, %111, %98
  store i32 -1, i32* %1, align 4
  br label %179

121:                                              ; preds = %117
  %122 = load i8*, i8** %9, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 63
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load i8*, i8** %9, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.func*, %struct.func** %8, align 8
  %133 = call i32 @acaller(i8* %127, i8* %128, i32 %129, i32 %130, i32 %131, %struct.func* %132)
  br label %134

134:                                              ; preds = %126, %121
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %2, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %2, align 4
  br label %78

138:                                              ; preds = %78
  %139 = call i32 (...) @getd()
  store i32 %139, i32* %5, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 -1, i32* %1, align 4
  br label %179

142:                                              ; preds = %138
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %175, %142
  %144 = load i32, i32* %2, align 4
  %145 = load i32, i32* %5, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %178

147:                                              ; preds = %143
  %148 = call i32 (...) @getd()
  store i32 %148, i32* %15, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %159, label %150

150:                                              ; preds = %147
  %151 = call i32 (...) @getd()
  store i32 %151, i32* %16, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %150
  %154 = call i32 (...) @getd()
  store i32 %154, i32* %17, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = call i32 (...) @getd()
  store i32 %157, i32* %18, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156, %153, %150, %147
  store i32 -1, i32* %1, align 4
  br label %179

160:                                              ; preds = %156
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %160
  %164 = load i32, i32* %2, align 4
  %165 = load i32, i32* %15, align 4
  %166 = sub nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [64 x i8*], [64 x i8*]* %6, i64 0, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* %17, align 4
  %172 = load i32, i32* %18, align 4
  %173 = call i32 @apoint(i32 %164, i8* %169, i32 %170, i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %163, %160
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %2, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %2, align 4
  br label %143

178:                                              ; preds = %143
  store i32 1, i32* %1, align 4
  br label %179

179:                                              ; preds = %178, %159, %141, %120, %97, %76, %39, %21
  %180 = load i32, i32* %1, align 4
  ret i32 %180
}

declare dso_local i32 @getd(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @NELEMS(i8**) #1

declare dso_local i8* @getstr(...) #1

declare dso_local i32 @findfile(i8*) #1

declare dso_local i32 @NEW(%struct.file*, i32) #1

declare dso_local %struct.func* @afunction(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @acaller(i8*, i8*, i32, i32, i32, %struct.func*) #1

declare dso_local i32 @apoint(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
