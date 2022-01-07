; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_log.c_log_setsize.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_log.c_log_setsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32, i32 }

@MAX_MSG_BSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"log_setsize: unable to allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@msgbufp = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [72 x i8] c"log_setsize(%d): old_logdata %p old_logsize %d old_bufr %d old_bufx %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"log_setsize(%d): new_logdata %p new_logsize %d new_bufr %d new_bufx %d\0A\00", align 1
@smsg_bufc = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"set system log size to %d bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @log_setsize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @MAX_MSG_BSIZE, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %2, align 4
  br label %170

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %2, align 4
  br label %170

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @kalloc(i32 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %4, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %2, align 4
  br label %170

35:                                               ; preds = %26
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @bzero(i8* %36, i32 %37)
  %39 = call i32 (...) @LOG_LOCK()
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgbufp, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %9, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgbufp, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %8, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgbufp, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %10, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgbufp, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @LOG_SETSIZE_DEBUG(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %52, i8* %53, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %35
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %13, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = sub i64 0, %68
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  store i8* %70, i8** %14, align 8
  br label %85

71:                                               ; preds = %35
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @MIN(i32 %72, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %11, align 4
  %81 = sub nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = sub i64 0, %82
  %84 = getelementptr inbounds i8, i8* %78, i64 %83
  store i8* %84, i8** %14, align 8
  br label %85

85:                                               ; preds = %71, %61
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %108, %85
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %111

90:                                               ; preds = %86
  %91 = load i8*, i8** %14, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = icmp uge i8* %91, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i8*, i8** %8, align 8
  store i8* %98, i8** %14, align 8
  br label %99

99:                                               ; preds = %97, %90
  %100 = load i8*, i8** %14, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %14, align 8
  %102 = load i8, i8* %100, align 1
  store i8 %102, i8* %15, align 1
  %103 = load i8, i8* %15, align 1
  %104 = load i8*, i8** %4, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  store i8 %103, i8* %107, align 1
  br label %108

108:                                              ; preds = %99
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %86

111:                                              ; preds = %86
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %116, %111
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgbufp, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %10, align 4
  %123 = sub nsw i32 %121, %122
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %117
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %126, %117
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %6, align 4
  %133 = sub nsw i32 %131, %132
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %136, %130
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgbufp, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* %5, align 4
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgbufp, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load i8*, i8** %4, align 8
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgbufp, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  %150 = load i32, i32* %3, align 4
  %151 = load i8*, i8** %4, align 8
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @LOG_SETSIZE_DEBUG(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %150, i8* %151, i32 %152, i32 %153, i32 %154)
  %156 = call i32 (...) @LOG_UNLOCK()
  %157 = load i8*, i8** %8, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @bzero(i8* %157, i32 %158)
  %160 = load i8*, i8** %8, align 8
  %161 = load i8*, i8** @smsg_bufc, align 8
  %162 = icmp ne i8* %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %140
  %164 = load i8*, i8** %8, align 8
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @kfree(i8* %164, i32 %165)
  br label %167

167:                                              ; preds = %163, %140
  %168 = load i32, i32* %5, align 4
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %168)
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %167, %32, %24, %19
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i64 @kalloc(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @LOG_LOCK(...) #1

declare dso_local i32 @LOG_SETSIZE_DEBUG(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @LOG_UNLOCK(...) #1

declare dso_local i32 @kfree(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
