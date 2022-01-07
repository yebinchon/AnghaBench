; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/os/extr_log.c_firehose_debug_trace.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/os/extr_log.c_firehose_debug_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [81 x i8] c"[os_log stream 0x%x trace_id 0x%llx timestamp %llu format '%s' data %p len %lu]\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c">oslog 0x%08x: 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @firehose_debug_trace(i64 %0, i64 %1, i32 %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load i64, i64* %7, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i64, i64* %8, align 8
  %18 = trunc i64 %17 to i8
  %19 = load i32, i32* %9, align 4
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %10, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load i64, i64* %12, align 8
  %24 = call i32 (i8*, i32, i8, i8, ...) @kprintf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %16, i8 zeroext %18, i8 zeroext %20, i8* %21, i8* %22, i64 %23)
  %25 = load i8*, i8** %11, align 8
  store i8* %25, i8** %14, align 8
  store i64 0, i64* %13, align 8
  br label %26

26:                                               ; preds = %148, %6
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %151

30:                                               ; preds = %26
  %31 = load i64, i64* %13, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i64, i64* %13, align 8
  %34 = add i64 %33, 0
  %35 = load i64, i64* %12, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i8*, i8** %14, align 8
  %39 = load i64, i64* %13, align 8
  %40 = add i64 %39, 0
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  br label %45

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44, %37
  %46 = phi i32 [ %43, %37 ], [ 0, %44 ]
  %47 = trunc i32 %46 to i8
  %48 = load i64, i64* %13, align 8
  %49 = add i64 %48, 1
  %50 = load i64, i64* %12, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i8*, i8** %14, align 8
  %54 = load i64, i64* %13, align 8
  %55 = add i64 %54, 1
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  br label %60

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %52
  %61 = phi i32 [ %58, %52 ], [ 0, %59 ]
  %62 = trunc i32 %61 to i8
  %63 = load i64, i64* %13, align 8
  %64 = add i64 %63, 2
  %65 = load i64, i64* %12, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load i8*, i8** %14, align 8
  %69 = load i64, i64* %13, align 8
  %70 = add i64 %69, 2
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  br label %75

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %74, %67
  %76 = phi i32 [ %73, %67 ], [ 0, %74 ]
  %77 = load i64, i64* %13, align 8
  %78 = add i64 %77, 3
  %79 = load i64, i64* %12, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load i8*, i8** %14, align 8
  %83 = load i64, i64* %13, align 8
  %84 = add i64 %83, 3
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  br label %89

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88, %81
  %90 = phi i32 [ %87, %81 ], [ 0, %88 ]
  %91 = load i64, i64* %13, align 8
  %92 = add i64 %91, 4
  %93 = load i64, i64* %12, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load i8*, i8** %14, align 8
  %97 = load i64, i64* %13, align 8
  %98 = add i64 %97, 4
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  br label %103

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102, %95
  %104 = phi i32 [ %101, %95 ], [ 0, %102 ]
  %105 = load i64, i64* %13, align 8
  %106 = add i64 %105, 5
  %107 = load i64, i64* %12, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load i8*, i8** %14, align 8
  %111 = load i64, i64* %13, align 8
  %112 = add i64 %111, 5
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  br label %117

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %116, %109
  %118 = phi i32 [ %115, %109 ], [ 0, %116 ]
  %119 = load i64, i64* %13, align 8
  %120 = add i64 %119, 6
  %121 = load i64, i64* %12, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load i8*, i8** %14, align 8
  %125 = load i64, i64* %13, align 8
  %126 = add i64 %125, 6
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  br label %131

130:                                              ; preds = %117
  br label %131

131:                                              ; preds = %130, %123
  %132 = phi i32 [ %129, %123 ], [ 0, %130 ]
  %133 = load i64, i64* %13, align 8
  %134 = add i64 %133, 7
  %135 = load i64, i64* %12, align 8
  %136 = icmp ult i64 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load i8*, i8** %14, align 8
  %139 = load i64, i64* %13, align 8
  %140 = add i64 %139, 7
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  br label %145

144:                                              ; preds = %131
  br label %145

145:                                              ; preds = %144, %137
  %146 = phi i32 [ %143, %137 ], [ 0, %144 ]
  %147 = call i32 (i8*, i32, i8, i8, ...) @kprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %32, i8 zeroext %47, i8 zeroext %62, i32 %76, i32 %90, i32 %104, i32 %118, i32 %132, i32 %146)
  br label %148

148:                                              ; preds = %145
  %149 = load i64, i64* %13, align 8
  %150 = add i64 %149, 8
  store i64 %150, i64* %13, align 8
  br label %26

151:                                              ; preds = %26
  %152 = load i64, i64* %8, align 8
  ret i64 %152
}

declare dso_local i32 @kprintf(i8*, i32, i8 zeroext, i8 zeroext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
