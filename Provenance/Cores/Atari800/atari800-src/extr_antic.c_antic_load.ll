; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_antic.c_antic_load.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_antic.c_antic_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@screenaddr = common dso_local global i32 0, align 4
@chars_read = common dso_local global i32* null, align 8
@md = common dso_local global i64 0, align 8
@ANTIC_xe_ptr = common dso_local global i32* null, align 8
@antic_memory = common dso_local global i32* null, align 8
@ANTIC_margin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @antic_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @antic_load() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @screenaddr, align 4
  %4 = load i32*, i32** @chars_read, align 8
  %5 = load i64, i64* @md, align 8
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %3, %7
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* @screenaddr, align 4
  %10 = load i32, i32* %1, align 4
  %11 = xor i32 %9, %10
  %12 = and i32 %11, 61440
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %122

14:                                               ; preds = %0
  %15 = load i32, i32* @screenaddr, align 4
  %16 = sub nsw i32 0, %15
  %17 = and i32 %16, 4095
  store i32 %17, i32* %2, align 4
  %18 = load i32*, i32** @ANTIC_xe_ptr, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %60

20:                                               ; preds = %14
  %21 = load i32, i32* @screenaddr, align 4
  %22 = icmp slt i32 %21, 32768
  br i1 %22, label %23, label %60

23:                                               ; preds = %20
  %24 = load i32, i32* @screenaddr, align 4
  %25 = icmp sge i32 %24, 16384
  br i1 %25, label %26, label %60

26:                                               ; preds = %23
  %27 = load i32*, i32** @antic_memory, align 8
  %28 = load i32, i32* @ANTIC_margin, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32*, i32** @ANTIC_xe_ptr, align 8
  %32 = load i32, i32* @screenaddr, align 4
  %33 = sub nsw i32 %32, 16384
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @memcpy(i32* %30, i32* %35, i32 %36)
  %38 = load i32, i32* %1, align 4
  %39 = and i32 %38, 4095
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %26
  %42 = load i32*, i32** @antic_memory, align 8
  %43 = load i32, i32* @ANTIC_margin, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32*, i32** @ANTIC_xe_ptr, align 8
  %50 = load i32, i32* @screenaddr, align 4
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %50, %51
  %53 = sub nsw i32 %52, 20480
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %49, i64 %54
  %56 = load i32, i32* %1, align 4
  %57 = and i32 %56, 4095
  %58 = call i32 @memcpy(i32* %48, i32* %55, i32 %57)
  br label %59

59:                                               ; preds = %41, %26
  br label %119

60:                                               ; preds = %23, %20, %14
  %61 = load i32, i32* @screenaddr, align 4
  %62 = and i32 %61, 61440
  %63 = icmp eq i32 %62, 53248
  br i1 %63, label %64, label %91

64:                                               ; preds = %60
  %65 = load i32, i32* @screenaddr, align 4
  %66 = load i32*, i32** @antic_memory, align 8
  %67 = load i32, i32* @ANTIC_margin, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @MEMORY_CopyFromMem(i32 %65, i32* %69, i32 %70)
  %72 = load i32, i32* %1, align 4
  %73 = and i32 %72, 4095
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %64
  %76 = load i32, i32* @screenaddr, align 4
  %77 = load i32, i32* %2, align 4
  %78 = add nsw i32 %76, %77
  %79 = sub nsw i32 %78, 4096
  %80 = load i32*, i32** @antic_memory, align 8
  %81 = load i32, i32* @ANTIC_margin, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %2, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %1, align 4
  %88 = and i32 %87, 4095
  %89 = call i32 @MEMORY_CopyFromMem(i32 %79, i32* %86, i32 %88)
  br label %90

90:                                               ; preds = %75, %64
  br label %118

91:                                               ; preds = %60
  %92 = load i32, i32* @screenaddr, align 4
  %93 = load i32*, i32** @antic_memory, align 8
  %94 = load i32, i32* @ANTIC_margin, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @MEMORY_dCopyFromMem(i32 %92, i32* %96, i32 %97)
  %99 = load i32, i32* %1, align 4
  %100 = and i32 %99, 4095
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %91
  %103 = load i32, i32* @screenaddr, align 4
  %104 = load i32, i32* %2, align 4
  %105 = add nsw i32 %103, %104
  %106 = sub nsw i32 %105, 4096
  %107 = load i32*, i32** @antic_memory, align 8
  %108 = load i32, i32* @ANTIC_margin, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %2, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %1, align 4
  %115 = and i32 %114, 4095
  %116 = call i32 @MEMORY_dCopyFromMem(i32 %106, i32* %113, i32 %115)
  br label %117

117:                                              ; preds = %102, %91
  br label %118

118:                                              ; preds = %117, %90
  br label %119

119:                                              ; preds = %118, %59
  %120 = load i32, i32* %1, align 4
  %121 = sub nsw i32 %120, 4096
  store i32 %121, i32* @screenaddr, align 4
  br label %175

122:                                              ; preds = %0
  %123 = load i32*, i32** @ANTIC_xe_ptr, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %146

125:                                              ; preds = %122
  %126 = load i32, i32* @screenaddr, align 4
  %127 = icmp slt i32 %126, 32768
  br i1 %127, label %128, label %146

128:                                              ; preds = %125
  %129 = load i32, i32* @screenaddr, align 4
  %130 = icmp sge i32 %129, 16384
  br i1 %130, label %131, label %146

131:                                              ; preds = %128
  %132 = load i32*, i32** @antic_memory, align 8
  %133 = load i32, i32* @ANTIC_margin, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32*, i32** @ANTIC_xe_ptr, align 8
  %137 = load i32, i32* @screenaddr, align 4
  %138 = sub nsw i32 %137, 16384
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32*, i32** @chars_read, align 8
  %142 = load i64, i64* @md, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @memcpy(i32* %135, i32* %140, i32 %144)
  br label %173

146:                                              ; preds = %128, %125, %122
  %147 = load i32, i32* @screenaddr, align 4
  %148 = and i32 %147, 61440
  %149 = icmp eq i32 %148, 53248
  br i1 %149, label %150, label %161

150:                                              ; preds = %146
  %151 = load i32, i32* @screenaddr, align 4
  %152 = load i32*, i32** @antic_memory, align 8
  %153 = load i32, i32* @ANTIC_margin, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32*, i32** @chars_read, align 8
  %157 = load i64, i64* @md, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @MEMORY_CopyFromMem(i32 %151, i32* %155, i32 %159)
  br label %172

161:                                              ; preds = %146
  %162 = load i32, i32* @screenaddr, align 4
  %163 = load i32*, i32** @antic_memory, align 8
  %164 = load i32, i32* @ANTIC_margin, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32*, i32** @chars_read, align 8
  %168 = load i64, i64* @md, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @MEMORY_dCopyFromMem(i32 %162, i32* %166, i32 %170)
  br label %172

172:                                              ; preds = %161, %150
  br label %173

173:                                              ; preds = %172, %131
  %174 = load i32, i32* %1, align 4
  store i32 %174, i32* @screenaddr, align 4
  br label %175

175:                                              ; preds = %173, %119
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @MEMORY_CopyFromMem(i32, i32*, i32) #1

declare dso_local i32 @MEMORY_dCopyFromMem(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
