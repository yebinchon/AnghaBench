; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_bios.c_BiosInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_bios.c_BiosInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@interruptlist = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BiosInit() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @MappedMemoryWriteLong(i32 100664832, i32 2818057)
  %3 = call i32 @MappedMemoryWriteLong(i32 100664836, i32 -521117684)
  %4 = call i32 @MappedMemoryWriteLong(i32 100664840, i32 1074695166)
  %5 = call i32 @MappedMemoryWriteLong(i32 100664844, i32 589833)
  %6 = call i32 @MappedMemoryWriteLong(i32 100664848, i32 720905)
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %31, %0
  %8 = load i32, i32* %1, align 4
  %9 = icmp slt i32 %8, 512
  br i1 %9, label %10, label %34

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 100663296, %11
  %13 = call i32 @MappedMemoryWriteLong(i32 %12, i32 100664832)
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 100664320, %14
  %16 = call i32 @MappedMemoryWriteLong(i32 %15, i32 100664832)
  %17 = load i32**, i32*** @interruptlist, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %1, align 4
  %21 = ashr i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32 100664832, i32* %23, align 4
  %24 = load i32**, i32*** @interruptlist, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %1, align 4
  %28 = ashr i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32 100664832, i32* %30, align 4
  br label %31

31:                                               ; preds = %10
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 4
  store i32 %33, i32* %1, align 4
  br label %7

34:                                               ; preds = %7
  %35 = call i32 @MappedMemoryWriteLong(i32 100663312, i32 100664836)
  %36 = call i32 @MappedMemoryWriteLong(i32 100663320, i32 100664836)
  %37 = call i32 @MappedMemoryWriteLong(i32 100663332, i32 100664836)
  %38 = call i32 @MappedMemoryWriteLong(i32 100663336, i32 100664836)
  %39 = load i32**, i32*** @interruptlist, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  store i32 100664836, i32* %42, align 4
  %43 = load i32**, i32*** @interruptlist, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 6
  store i32 100664836, i32* %46, align 4
  %47 = load i32**, i32*** @interruptlist, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 9
  store i32 100664836, i32* %50, align 4
  %51 = load i32**, i32*** @interruptlist, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 10
  store i32 100664836, i32* %54, align 4
  %55 = call i32 @MappedMemoryWriteLong(i32 100664336, i32 100664836)
  %56 = call i32 @MappedMemoryWriteLong(i32 100664344, i32 100664836)
  %57 = call i32 @MappedMemoryWriteLong(i32 100664356, i32 100664836)
  %58 = call i32 @MappedMemoryWriteLong(i32 100664360, i32 100664836)
  %59 = load i32**, i32*** @interruptlist, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  store i32 100664836, i32* %62, align 4
  %63 = load i32**, i32*** @interruptlist, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 6
  store i32 100664836, i32* %66, align 4
  %67 = load i32**, i32*** @interruptlist, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 9
  store i32 100664836, i32* %70, align 4
  %71 = load i32**, i32*** @interruptlist, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 10
  store i32 100664836, i32* %74, align 4
  store i32 0, i32* %1, align 4
  br label %75

75:                                               ; preds = %94, %34
  %76 = load i32, i32* %1, align 4
  %77 = icmp slt i32 %76, 56
  br i1 %77, label %78, label %97

78:                                               ; preds = %75
  %79 = load i32, i32* %1, align 4
  %80 = add nsw i32 100663552, %79
  %81 = load i32, i32* %1, align 4
  %82 = add nsw i32 1024, %81
  %83 = call i32 @MappedMemoryWriteLong(i32 %80, i32 %82)
  %84 = load i32, i32* %1, align 4
  %85 = add nsw i32 1024, %84
  %86 = load i32**, i32*** @interruptlist, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %1, align 4
  %90 = ashr i32 %89, 2
  %91 = add nsw i32 64, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  store i32 %85, i32* %93, align 4
  br label %94

94:                                               ; preds = %78
  %95 = load i32, i32* %1, align 4
  %96 = add nsw i32 %95, 4
  store i32 %96, i32* %1, align 4
  br label %75

97:                                               ; preds = %75
  store i32 0, i32* %1, align 4
  br label %98

98:                                               ; preds = %117, %97
  %99 = load i32, i32* %1, align 4
  %100 = icmp slt i32 %99, 64
  br i1 %100, label %101, label %120

101:                                              ; preds = %98
  %102 = load i32, i32* %1, align 4
  %103 = add nsw i32 100663616, %102
  %104 = load i32, i32* %1, align 4
  %105 = add nsw i32 1088, %104
  %106 = call i32 @MappedMemoryWriteLong(i32 %103, i32 %105)
  %107 = load i32, i32* %1, align 4
  %108 = add nsw i32 1088, %107
  %109 = load i32**, i32*** @interruptlist, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %1, align 4
  %113 = ashr i32 %112, 2
  %114 = add nsw i32 80, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  store i32 %108, i32* %116, align 4
  br label %117

117:                                              ; preds = %101
  %118 = load i32, i32* %1, align 4
  %119 = add nsw i32 %118, 4
  store i32 %119, i32* %1, align 4
  br label %98

120:                                              ; preds = %98
  store i32 0, i32* %1, align 4
  br label %121

121:                                              ; preds = %128, %120
  %122 = load i32, i32* %1, align 4
  %123 = icmp slt i32 %122, 256
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load i32, i32* %1, align 4
  %126 = add nsw i32 100665856, %125
  %127 = call i32 @MappedMemoryWriteLong(i32 %126, i32 100664848)
  br label %128

128:                                              ; preds = %124
  %129 = load i32, i32* %1, align 4
  %130 = add nsw i32 %129, 4
  store i32 %130, i32* %1, align 4
  br label %121

131:                                              ; preds = %121
  %132 = call i32 @MappedMemoryWriteLong(i32 100663824, i32 528)
  %133 = call i32 @MappedMemoryWriteLong(i32 100663916, i32 620)
  %134 = call i32 @MappedMemoryWriteLong(i32 100663924, i32 628)
  %135 = call i32 @MappedMemoryWriteLong(i32 100663936, i32 640)
  %136 = call i32 @MappedMemoryWriteLong(i32 100663964, i32 668)
  %137 = call i32 @MappedMemoryWriteLong(i32 100664028, i32 732)
  %138 = call i32 @MappedMemoryWriteLong(i32 100664064, i32 768)
  %139 = call i32 @MappedMemoryWriteLong(i32 100664068, i32 772)
  %140 = call i32 @MappedMemoryWriteLong(i32 100664080, i32 784)
  %141 = call i32 @MappedMemoryWriteLong(i32 100664084, i32 788)
  %142 = call i32 @MappedMemoryWriteLong(i32 100664096, i32 800)
  %143 = call i32 @MappedMemoryWriteLong(i32 100664100, i32 0)
  %144 = call i32 @MappedMemoryWriteLong(i32 100664112, i32 816)
  %145 = call i32 @MappedMemoryWriteLong(i32 100664116, i32 820)
  %146 = call i32 @MappedMemoryWriteLong(i32 100664128, i32 832)
  %147 = call i32 @MappedMemoryWriteLong(i32 100664132, i32 836)
  %148 = call i32 @MappedMemoryWriteLong(i32 100664136, i32 -1)
  %149 = call i32 @MappedMemoryWriteLong(i32 100664148, i32 0)
  %150 = call i32 @MappedMemoryWriteLong(i32 100664152, i32 856)
  ret void
}

declare dso_local i32 @MappedMemoryWriteLong(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
