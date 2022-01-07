; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_log.c_log_dmesg.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_log.c_log_dmesg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32 }

@msgbufp = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"log_dmesg: unable to allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @log_dmesg(i32 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %10, align 4
  %18 = call i32 (...) @LOG_LOCK()
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgbufp, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 2
  store i32 %22, i32* %9, align 4
  %23 = call i32 (...) @LOG_UNLOCK()
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @kalloc(i32 %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %13, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %4, align 4
  br label %161

31:                                               ; preds = %3
  %32 = call i32 (...) @LOG_LOCK()
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgbufp, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgbufp, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  store i8* %40, i8** %14, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %109, %31
  %42 = load i8*, i8** %14, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgbufp, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgbufp, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  %51 = getelementptr inbounds i8, i8* %50, i64 -1
  %52 = icmp ne i8* %42, %51
  br i1 %52, label %53, label %112

53:                                               ; preds = %41
  %54 = load i8*, i8** %14, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgbufp, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgbufp, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  %63 = icmp uge i8* %54, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %53
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgbufp, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %14, align 8
  br label %68

68:                                               ; preds = %64, %53
  %69 = load i8*, i8** %14, align 8
  %70 = load i8, i8* %69, align 1
  store i8 %70, i8* %16, align 1
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i8, i8* %16, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 62
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %77, %73
  br label %109

79:                                               ; preds = %68
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i8, i8* %16, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 60
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 1, i32* %12, align 4
  br label %109

87:                                               ; preds = %82, %79
  %88 = load i8, i8* %16, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %109

92:                                               ; preds = %87
  %93 = load i8, i8* %16, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 10
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %11, align 4
  %97 = load i8, i8* %16, align 1
  %98 = load i8*, i8** %13, align 8
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  store i8 %97, i8* %102, align 1
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %9, align 4
  %105 = sub nsw i32 %104, 2
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %92
  br label %112

108:                                              ; preds = %92
  br label %109

109:                                              ; preds = %108, %91, %86, %78
  %110 = load i8*, i8** %14, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %14, align 8
  br label %41

112:                                              ; preds = %107, %41
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %112
  %116 = load i8*, i8** %13, align 8
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  store i8 10, i8* %120, align 1
  br label %121

121:                                              ; preds = %115, %112
  %122 = load i8*, i8** %13, align 8
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %122, i64 %125
  store i8 0, i8* %126, align 1
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp sge i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %121
  %131 = load i8*, i8** %13, align 8
  store i8* %131, i8** %15, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  store i64 %133, i64* %17, align 8
  br label %145

134:                                              ; preds = %121
  %135 = load i8*, i8** %13, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = sub i64 0, %140
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  store i8* %142, i8** %15, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  store i64 %144, i64* %17, align 8
  br label %145

145:                                              ; preds = %134, %130
  %146 = call i32 (...) @LOG_UNLOCK()
  %147 = load i8*, i8** %15, align 8
  %148 = load i32, i32* %5, align 4
  %149 = load i64, i64* %17, align 8
  %150 = call i32 @copyout(i8* %147, i32 %148, i64 %149)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %145
  %154 = load i64, i64* %17, align 8
  %155 = load i64*, i64** %7, align 8
  store i64 %154, i64* %155, align 8
  br label %156

156:                                              ; preds = %153, %145
  %157 = load i8*, i8** %13, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @kfree(i8* %157, i32 %158)
  %160 = load i32, i32* %10, align 4
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %156, %28
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @LOG_LOCK(...) #1

declare dso_local i32 @LOG_UNLOCK(...) #1

declare dso_local i64 @kalloc(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @copyout(i8*, i32, i64) #1

declare dso_local i32 @kfree(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
