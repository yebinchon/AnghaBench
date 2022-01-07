; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_http2-download.c_dump.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_http2-download.c_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%d %s, %lu bytes (0x%lx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%4.4lx: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i64, i8)* @dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump(i8* %0, i32 %1, i8* %2, i64 %3, i8 signext %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8 %4, i8* %10, align 1
  store i32 16, i32* %13, align 4
  %14 = load i8, i8* %10, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 64, i32* %13, align 4
  br label %17

17:                                               ; preds = %16, %5
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32, i32* %7, align 4
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 (i32, i8*, i8, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8 zeroext %20, i8* %21, i64 %22, i64 %23)
  store i64 0, i64* %11, align 8
  br label %25

25:                                               ; preds = %194, %17
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %199

29:                                               ; preds = %25
  %30 = load i32, i32* @stderr, align 4
  %31 = load i64, i64* %11, align 8
  %32 = trunc i64 %31 to i8
  %33 = call i32 (i32, i8*, i8, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %32)
  %34 = load i8, i8* %10, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %65, label %36

36:                                               ; preds = %29
  store i64 0, i64* %12, align 8
  br label %37

37:                                               ; preds = %61, %36
  %38 = load i64, i64* %12, align 8
  %39 = load i32, i32* %13, align 4
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %37
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = add i64 %43, %44
  %46 = load i64, i64* %9, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %12, align 8
  %53 = add i64 %51, %52
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = call i32 (i32, i8*, i8, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %55)
  br label %60

57:                                               ; preds = %42
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %57, %48
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %12, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %12, align 8
  br label %37

64:                                               ; preds = %37
  br label %65

65:                                               ; preds = %64, %29
  store i64 0, i64* %12, align 8
  br label %66

66:                                               ; preds = %188, %65
  %67 = load i64, i64* %12, align 8
  %68 = load i32, i32* %13, align 4
  %69 = zext i32 %68 to i64
  %70 = icmp ult i64 %67, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %12, align 8
  %74 = add i64 %72, %73
  %75 = load i64, i64* %9, align 8
  %76 = icmp ult i64 %74, %75
  br label %77

77:                                               ; preds = %71, %66
  %78 = phi i1 [ false, %66 ], [ %76, %71 ]
  br i1 %78, label %79, label %191

79:                                               ; preds = %77
  %80 = load i8, i8* %10, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %117

83:                                               ; preds = %79
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %12, align 8
  %86 = add i64 %84, %85
  %87 = add i64 %86, 1
  %88 = load i64, i64* %9, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %117

90:                                               ; preds = %83
  %91 = load i8*, i8** %8, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* %12, align 8
  %94 = add i64 %92, %93
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %97, 13
  br i1 %98, label %99, label %117

99:                                               ; preds = %90
  %100 = load i8*, i8** %8, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* %12, align 8
  %103 = add i64 %101, %102
  %104 = add i64 %103, 1
  %105 = getelementptr inbounds i8, i8* %100, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 10
  br i1 %108, label %109, label %117

109:                                              ; preds = %99
  %110 = load i64, i64* %12, align 8
  %111 = add i64 %110, 2
  %112 = load i32, i32* %13, align 4
  %113 = zext i32 %112 to i64
  %114 = sub i64 %111, %113
  %115 = load i64, i64* %11, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %11, align 8
  br label %191

117:                                              ; preds = %99, %90, %83, %79
  %118 = load i32, i32* @stderr, align 4
  %119 = load i8*, i8** %8, align 8
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* %12, align 8
  %122 = add i64 %120, %121
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp sge i32 %125, 32
  br i1 %126, label %127, label %144

127:                                              ; preds = %117
  %128 = load i8*, i8** %8, align 8
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* %12, align 8
  %131 = add i64 %129, %130
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp slt i32 %134, 128
  br i1 %135, label %136, label %144

136:                                              ; preds = %127
  %137 = load i8*, i8** %8, align 8
  %138 = load i64, i64* %11, align 8
  %139 = load i64, i64* %12, align 8
  %140 = add i64 %138, %139
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  br label %145

144:                                              ; preds = %127, %117
  br label %145

145:                                              ; preds = %144, %136
  %146 = phi i32 [ %143, %136 ], [ 46, %144 ]
  %147 = trunc i32 %146 to i8
  %148 = call i32 (i32, i8*, i8, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8 zeroext %147)
  %149 = load i8, i8* %10, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %187

152:                                              ; preds = %145
  %153 = load i64, i64* %11, align 8
  %154 = load i64, i64* %12, align 8
  %155 = add i64 %153, %154
  %156 = add i64 %155, 2
  %157 = load i64, i64* %9, align 8
  %158 = icmp ult i64 %156, %157
  br i1 %158, label %159, label %187

159:                                              ; preds = %152
  %160 = load i8*, i8** %8, align 8
  %161 = load i64, i64* %11, align 8
  %162 = load i64, i64* %12, align 8
  %163 = add i64 %161, %162
  %164 = add i64 %163, 1
  %165 = getelementptr inbounds i8, i8* %160, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = icmp eq i32 %167, 13
  br i1 %168, label %169, label %187

169:                                              ; preds = %159
  %170 = load i8*, i8** %8, align 8
  %171 = load i64, i64* %11, align 8
  %172 = load i64, i64* %12, align 8
  %173 = add i64 %171, %172
  %174 = add i64 %173, 2
  %175 = getelementptr inbounds i8, i8* %170, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = icmp eq i32 %177, 10
  br i1 %178, label %179, label %187

179:                                              ; preds = %169
  %180 = load i64, i64* %12, align 8
  %181 = add i64 %180, 3
  %182 = load i32, i32* %13, align 4
  %183 = zext i32 %182 to i64
  %184 = sub i64 %181, %183
  %185 = load i64, i64* %11, align 8
  %186 = add i64 %185, %184
  store i64 %186, i64* %11, align 8
  br label %191

187:                                              ; preds = %169, %159, %152, %145
  br label %188

188:                                              ; preds = %187
  %189 = load i64, i64* %12, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %12, align 8
  br label %66

191:                                              ; preds = %179, %109, %77
  %192 = load i32, i32* @stderr, align 4
  %193 = call i32 @fputc(i8 signext 10, i32 %192)
  br label %194

194:                                              ; preds = %191
  %195 = load i32, i32* %13, align 4
  %196 = zext i32 %195 to i64
  %197 = load i64, i64* %11, align 8
  %198 = add i64 %197, %196
  store i64 %198, i64* %11, align 8
  br label %25

199:                                              ; preds = %25
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8 zeroext, ...) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
