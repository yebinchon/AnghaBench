; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c_CDVD_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c_CDVD_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@CDVD_read.local_buffer = internal global [18432 x i8] zeroinitializer, align 16
@fd_table = common dso_local global %struct.TYPE_2__* null, align 8
@lastsector = common dso_local global i32 0, align 4
@last_bk = common dso_local global i32 0, align 4
@cdReadMode = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CDVD_read(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %27, %3
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 16
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fd_table, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp eq i32* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %30

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %13

30:                                               ; preds = %25, %13
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, 16
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %179

34:                                               ; preds = %30
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fd_table, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fd_table, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %40, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %179

49:                                               ; preds = %34
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fd_table, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %55, %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fd_table, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %57, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %49
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fd_table, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fd_table, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %71, %77
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %65, %49
  %80 = load i32, i32* %7, align 4
  %81 = icmp sle i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %179

83:                                               ; preds = %79
  %84 = load i32, i32* %7, align 4
  %85 = icmp sgt i32 %84, 16384
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 16384, i32* %7, align 4
  br label %87

87:                                               ; preds = %86, %83
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fd_table, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fd_table, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = ashr i32 %99, 11
  %101 = add nsw i32 %93, %100
  store i32 %101, i32* %9, align 4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fd_table, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, 2047
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %109, %110
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = ashr i32 %112, 11
  %114 = load i32, i32* %11, align 4
  %115 = and i32 %114, 2047
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = add nsw i32 %113, %117
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @lastsector, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %87
  store i32 1, i32* %12, align 4
  %123 = load i32, i32* @last_bk, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i32, i32* @last_bk, align 4
  %127 = mul nsw i32 2048, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* getelementptr inbounds ([18432 x i8], [18432 x i8]* @CDVD_read.local_buffer, i64 0, i64 0), i64 %128
  %130 = call i32 @memcpy(i8* getelementptr inbounds ([18432 x i8], [18432 x i8]* @CDVD_read.local_buffer, i64 0, i64 0), i8* %129, i32 2048)
  br label %131

131:                                              ; preds = %125, %122
  store i32 0, i32* @last_bk, align 4
  br label %132

132:                                              ; preds = %131, %87
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %133, %134
  %136 = sub nsw i32 %135, 1
  store i32 %136, i32* @lastsector, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %12, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %163

142:                                              ; preds = %139
  %143 = load i32, i32* %11, align 4
  %144 = icmp sgt i32 %143, 1
  br i1 %144, label %145, label %163

145:                                              ; preds = %142, %132
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %146, %147
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %12, align 4
  %151 = sub nsw i32 %149, %150
  %152 = load i32, i32* %12, align 4
  %153 = shl i32 %152, 11
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* getelementptr inbounds ([18432 x i8], [18432 x i8]* @CDVD_read.local_buffer, i64 0, i64 0), i64 %154
  %156 = call i64 @ReadSect(i32 %148, i32 %151, i8* %155, i32* @cdReadMode)
  %157 = load i64, i64* @TRUE, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %145
  br label %160

160:                                              ; preds = %159, %145
  %161 = load i32, i32* %11, align 4
  %162 = sub nsw i32 %161, 1
  store i32 %162, i32* @last_bk, align 4
  br label %163

163:                                              ; preds = %160, %142, %139
  %164 = load i8*, i8** %6, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* getelementptr inbounds ([18432 x i8], [18432 x i8]* @CDVD_read.local_buffer, i64 0, i64 0), i64 %166
  %168 = load i32, i32* %7, align 4
  %169 = call i32 @memcpy(i8* %164, i8* %167, i32 %168)
  %170 = load i32, i32* %7, align 4
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fd_table, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, %170
  store i32 %177, i32* %175, align 8
  %178 = load i32, i32* %7, align 4
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %163, %82, %48, %33
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @ReadSect(i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
