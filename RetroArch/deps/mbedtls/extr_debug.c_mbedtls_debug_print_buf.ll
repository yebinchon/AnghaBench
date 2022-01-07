; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_debug.c_mbedtls_debug_print_buf.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_debug.c_mbedtls_debug_print_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@DEBUG_BUF_SIZE = common dso_local global i32 0, align 4
@debug_threshold = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"dumping '%s' (%u bytes)\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%04x: \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"   \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_debug_print_buf(%struct.TYPE_6__* %0, i32 %1, i8* %2, i32 %3, i8* %4, i8* %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca [17 x i8], align 16
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %21 = load i32, i32* @DEBUG_BUF_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %15, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %16, align 8
  store i64 0, i64* %19, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = icmp eq %struct.TYPE_5__* %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %7
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @debug_threshold, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %29, %7
  store i32 1, i32* %20, align 4
  br label %176

41:                                               ; preds = %36
  %42 = load i64, i64* %19, align 8
  %43 = getelementptr inbounds i8, i8* %24, i64 %42
  %44 = load i64, i64* %19, align 8
  %45 = sub i64 %22, %44
  %46 = trunc i64 %45 to i32
  %47 = load i8*, i8** %12, align 8
  %48 = load i64, i64* %14, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i64 (i8*, i32, i8*, ...) @mbedtls_snprintf(i8* %43, i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %47, i32 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @debug_send_line(%struct.TYPE_6__* %51, i32 %52, i8* %53, i32 %54, i8* %24)
  store i64 0, i64* %19, align 8
  %56 = getelementptr inbounds [17 x i8], [17 x i8]* %17, i64 0, i64 0
  %57 = call i32 @memset(i8* %56, i32 0, i32 17)
  store i64 0, i64* %18, align 8
  br label %58

58:                                               ; preds = %139, %41
  %59 = load i64, i64* %18, align 8
  %60 = load i64, i64* %14, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %142

62:                                               ; preds = %58
  %63 = load i64, i64* %18, align 8
  %64 = icmp uge i64 %63, 4096
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %142

66:                                               ; preds = %62
  %67 = load i64, i64* %18, align 8
  %68 = urem i64 %67, 16
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %99

70:                                               ; preds = %66
  %71 = load i64, i64* %18, align 8
  %72 = icmp ugt i64 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %70
  %74 = load i64, i64* %19, align 8
  %75 = getelementptr inbounds i8, i8* %24, i64 %74
  %76 = load i64, i64* %19, align 8
  %77 = sub i64 %22, %76
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds [17 x i8], [17 x i8]* %17, i64 0, i64 0
  %80 = call i64 (i8*, i32, i8*, ...) @mbedtls_snprintf(i8* %75, i32 %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i8*, i8** %10, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @debug_send_line(%struct.TYPE_6__* %81, i32 %82, i8* %83, i32 %84, i8* %24)
  store i64 0, i64* %19, align 8
  %86 = getelementptr inbounds [17 x i8], [17 x i8]* %17, i64 0, i64 0
  %87 = call i32 @memset(i8* %86, i32 0, i32 17)
  br label %88

88:                                               ; preds = %73, %70
  %89 = load i64, i64* %19, align 8
  %90 = getelementptr inbounds i8, i8* %24, i64 %89
  %91 = load i64, i64* %19, align 8
  %92 = sub i64 %22, %91
  %93 = trunc i64 %92 to i32
  %94 = load i64, i64* %18, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i64 (i8*, i32, i8*, ...) @mbedtls_snprintf(i8* %90, i32 %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load i64, i64* %19, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %19, align 8
  br label %99

99:                                               ; preds = %88, %66
  %100 = load i64, i64* %19, align 8
  %101 = getelementptr inbounds i8, i8* %24, i64 %100
  %102 = load i64, i64* %19, align 8
  %103 = sub i64 %22, %102
  %104 = trunc i64 %103 to i32
  %105 = load i8*, i8** %13, align 8
  %106 = load i64, i64* %18, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = call i64 (i8*, i32, i8*, ...) @mbedtls_snprintf(i8* %101, i32 %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  %111 = load i64, i64* %19, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %19, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = load i64, i64* %18, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp sgt i32 %117, 31
  br i1 %118, label %119, label %132

119:                                              ; preds = %99
  %120 = load i8*, i8** %13, align 8
  %121 = load i64, i64* %18, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp slt i32 %124, 127
  br i1 %125, label %126, label %132

126:                                              ; preds = %119
  %127 = load i8*, i8** %13, align 8
  %128 = load i64, i64* %18, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  br label %133

132:                                              ; preds = %119, %99
  br label %133

133:                                              ; preds = %132, %126
  %134 = phi i32 [ %131, %126 ], [ 46, %132 ]
  %135 = trunc i32 %134 to i8
  %136 = load i64, i64* %18, align 8
  %137 = urem i64 %136, 16
  %138 = getelementptr inbounds [17 x i8], [17 x i8]* %17, i64 0, i64 %137
  store i8 %135, i8* %138, align 1
  br label %139

139:                                              ; preds = %133
  %140 = load i64, i64* %18, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %18, align 8
  br label %58

142:                                              ; preds = %65, %58
  %143 = load i64, i64* %14, align 8
  %144 = icmp ugt i64 %143, 0
  br i1 %144, label %145, label %175

145:                                              ; preds = %142
  br label %146

146:                                              ; preds = %159, %145
  %147 = load i64, i64* %18, align 8
  %148 = urem i64 %147, 16
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %146
  %151 = load i64, i64* %19, align 8
  %152 = getelementptr inbounds i8, i8* %24, i64 %151
  %153 = load i64, i64* %19, align 8
  %154 = sub i64 %22, %153
  %155 = trunc i64 %154 to i32
  %156 = call i64 (i8*, i32, i8*, ...) @mbedtls_snprintf(i8* %152, i32 %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %157 = load i64, i64* %19, align 8
  %158 = add i64 %157, %156
  store i64 %158, i64* %19, align 8
  br label %159

159:                                              ; preds = %150
  %160 = load i64, i64* %18, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %18, align 8
  br label %146

162:                                              ; preds = %146
  %163 = load i64, i64* %19, align 8
  %164 = getelementptr inbounds i8, i8* %24, i64 %163
  %165 = load i64, i64* %19, align 8
  %166 = sub i64 %22, %165
  %167 = trunc i64 %166 to i32
  %168 = getelementptr inbounds [17 x i8], [17 x i8]* %17, i64 0, i64 0
  %169 = call i64 (i8*, i32, i8*, ...) @mbedtls_snprintf(i8* %164, i32 %167, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %168)
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load i8*, i8** %10, align 8
  %173 = load i32, i32* %11, align 4
  %174 = call i32 @debug_send_line(%struct.TYPE_6__* %170, i32 %171, i8* %172, i32 %173, i8* %24)
  br label %175

175:                                              ; preds = %162, %142
  store i32 0, i32* %20, align 4
  br label %176

176:                                              ; preds = %175, %40
  %177 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %177)
  %178 = load i32, i32* %20, align 4
  switch i32 %178, label %180 [
    i32 0, label %179
    i32 1, label %179
  ]

179:                                              ; preds = %176, %176
  ret void

180:                                              ; preds = %176
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mbedtls_snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @debug_send_line(%struct.TYPE_6__*, i32, i8*, i32, i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
