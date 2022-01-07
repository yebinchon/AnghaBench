; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_stream_check_for_ps.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_stream_check_for_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @hb_stream_check_for_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hb_stream_check_for_ps(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca [8192 x i32], align 16
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SEEK_SET, align 4
  %18 = call i32 @fseek(i32 %16, i32 0, i32 %17)
  br label %19

19:                                               ; preds = %143, %1
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 524288
  br i1 %21, label %22, label %153

22:                                               ; preds = %19
  %23 = getelementptr inbounds [8192 x i32], [8192 x i32]* %4, i64 0, i64 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @fread(i32* %23, i32 1, i32 32768, i32 %26)
  %28 = sext i32 %27 to i64
  %29 = icmp ne i64 %28, 32768
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %154

31:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %140, %31
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 8165
  br i1 %34, label %35, label %143

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8192 x i32], [8192 x i32]* %4, i64 0, i64 %37
  %39 = call i64 @check_ps_sync(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %139

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8192 x i32], [8192 x i32]* %4, i64 0, i64 %43
  %45 = call i64 @check_ps_sc(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %139

47:                                               ; preds = %41
  %48 = getelementptr inbounds [8192 x i32], [8192 x i32]* %4, i64 0, i64 0
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %12, align 8
  %52 = getelementptr inbounds [8192 x i32], [8192 x i32]* %4, i64 0, i64 4
  %53 = load i32, i32* %52, align 16
  %54 = ashr i32 %53, 4
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 12, i32* %8, align 4
  br label %63

58:                                               ; preds = %47
  %59 = getelementptr inbounds [8192 x i32], [8192 x i32]* %4, i64 0, i64 13
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 7
  %62 = add nsw i32 14, %61
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %58, %57
  %64 = load i32, i32* %8, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %12, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %11, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 8
  %75 = load i32*, i32** %12, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %74, %77
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %138

81:                                               ; preds = %63
  %82 = load i32, i32* %11, align 4
  %83 = icmp sgt i32 %82, 186
  br i1 %83, label %84, label %138

84:                                               ; preds = %81
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 249
  br i1 %86, label %87, label %138

87:                                               ; preds = %84
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ftell(i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = sub i64 32768, %95
  %97 = sub i64 %93, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 6
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @SEEK_SET, align 4
  %110 = call i32 @fseek(i32 %107, i32 %108, i32 %109)
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @fread(i32* %111, i32 1, i32 4, i32 %114)
  %116 = icmp ne i32 %115, 4
  br i1 %116, label %117, label %118

117:                                              ; preds = %87
  store i32 0, i32* %2, align 4
  br label %154

118:                                              ; preds = %87
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %120 = load i32, i32* %119, align 16
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  store i32 1, i32* %2, align 4
  br label %154

131:                                              ; preds = %126, %122, %118
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @SEEK_SET, align 4
  %137 = call i32 @fseek(i32 %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %131, %84, %81, %63
  br label %139

139:                                              ; preds = %138, %41, %35
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %32

143:                                              ; preds = %32
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @SEEK_CUR, align 4
  %148 = call i32 @fseek(i32 %146, i32 -27, i32 %147)
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @ftell(i32 %151)
  store i32 %152, i32* %6, align 4
  br label %19

153:                                              ; preds = %19
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %153, %130, %117, %30
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @fseek(i32, i32, i32) #1

declare dso_local i32 @fread(i32*, i32, i32, i32) #1

declare dso_local i64 @check_ps_sync(i32*) #1

declare dso_local i64 @check_ps_sc(i32*) #1

declare dso_local i32 @ftell(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
