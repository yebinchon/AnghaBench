; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_work.c_hb_work_loop.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_work.c_hb_work_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 (%struct.TYPE_3__*, i32**, i32**)*, i32*, i64*, i32*, i32, i32* }

@HB_WORK_DONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"worker %s waiting to die\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_work_loop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  br label %8

8:                                                ; preds = %117, %45, %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %13, %8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HB_WORK_DONE, align 8
  %30 = icmp ne i64 %28, %29
  br label %31

31:                                               ; preds = %25, %19, %13
  %32 = phi i1 [ false, %19 ], [ false, %13 ], [ %30, %25 ]
  br i1 %32, label %33, label %118

33:                                               ; preds = %31
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32* @hb_fifo_get_wait(i32* %41)
  store i32* %42, i32** %4, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %8

46:                                               ; preds = %38
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32*, i32** %4, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 @hb_buffer_close(i32** %4)
  br label %57

57:                                               ; preds = %55, %52
  br label %118

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %33
  store i32* null, i32** %5, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i64 (%struct.TYPE_3__*, i32**, i32**)*, i64 (%struct.TYPE_3__*, i32**, i32**)** %61, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = call i64 %62(%struct.TYPE_3__* %63, i32** %4, i32** %5)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @copy_chapter(i32* %67, i32* %68)
  %70 = load i32*, i32** %4, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %59
  %73 = call i32 @hb_buffer_close(i32** %4)
  br label %74

74:                                               ; preds = %72, %59
  %75 = load i32*, i32** %5, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 6
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = call i32 @hb_buffer_close(i32** %5)
  br label %84

84:                                               ; preds = %82, %77, %74
  %85 = load i32*, i32** %5, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %109

87:                                               ; preds = %84
  br label %88

88:                                               ; preds = %107, %87
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i64*, i64** %90, align 8
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  %94 = xor i1 %93, true
  br i1 %94, label %95, label %108

95:                                               ; preds = %88
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 6
  %98 = load i32*, i32** %97, align 8
  %99 = call i64 @hb_fifo_full_wait(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 6
  %104 = load i32*, i32** %103, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @hb_fifo_push(i32* %104, i32* %105)
  store i32* null, i32** %5, align 8
  br label %108

107:                                              ; preds = %95
  br label %88

108:                                              ; preds = %101, %88
  br label %117

109:                                              ; preds = %84
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = call i32 (...) @hb_yield()
  br label %116

116:                                              ; preds = %114, %109
  br label %117

117:                                              ; preds = %116, %108
  br label %8

118:                                              ; preds = %57, %31
  %119 = load i32*, i32** %5, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = call i32 @hb_buffer_close(i32** %5)
  br label %123

123:                                              ; preds = %121, %118
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @hb_deep_log(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %161, %123
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %139, label %133

133:                                              ; preds = %128
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %150, label %139

139:                                              ; preds = %133, %128
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 3
  %142 = load i64*, i64** %141, align 8
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %139
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br label %150

150:                                              ; preds = %145, %139, %133
  %151 = phi i1 [ false, %139 ], [ false, %133 ], [ %149, %145 ]
  br i1 %151, label %152, label %162

152:                                              ; preds = %150
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = call i32* @hb_fifo_get_wait(i32* %155)
  store i32* %156, i32** %4, align 8
  %157 = load i32*, i32** %4, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = call i32 @hb_buffer_close(i32** %4)
  br label %161

161:                                              ; preds = %159, %152
  br label %128

162:                                              ; preds = %150
  ret void
}

declare dso_local i32* @hb_fifo_get_wait(i32*) #1

declare dso_local i32 @hb_buffer_close(i32**) #1

declare dso_local i32 @copy_chapter(i32*, i32*) #1

declare dso_local i64 @hb_fifo_full_wait(i32*) #1

declare dso_local i32 @hb_fifo_push(i32*, i32*) #1

declare dso_local i32 @hb_yield(...) #1

declare dso_local i32 @hb_deep_log(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
