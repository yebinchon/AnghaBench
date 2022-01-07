; ModuleID = '/home/carl/AnghaBench/disque/src/extr_job.c_generateJobID.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_job.c_generateJobID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@generateJobID.counter = internal global i32 0, align 4
@server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CONFIG_RUN_ID_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generateJobID(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8], align 1
  %11 = alloca [20 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %14 = load i32, i32* @generateJobID.counter, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @generateJobID.counter, align 4
  %16 = call i32 @SHA1Init(i32* %9)
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 1), align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = load i32, i32* @CONFIG_RUN_ID_SIZE, align 4
  %20 = call i32 @SHA1Update(i32* %9, i8* %18, i32 %19)
  %21 = call i32 @SHA1Update(i32* %9, i8* bitcast (i32* @generateJobID.counter to i8*), i32 4)
  %22 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %23 = call i32 @SHA1Final(i8* %22, i32* %9)
  %24 = load i32, i32* %5, align 4
  %25 = sdiv i32 %24, 60
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 65535
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 65535, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %3
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, 1
  br label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, -2
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ]
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, 65280
  %46 = ashr i32 %45, 8
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %47, i8* %48, align 1
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 255
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 %51, i8* %52, align 1
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %4, align 8
  store i8 68, i8* %53, align 1
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %4, align 8
  store i8 45, i8* %55, align 1
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %73, %42
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %58, 8
  br i1 %59, label %60, label %76

60:                                               ; preds = %57
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %4, align 8
  store i8 %70, i8* %71, align 1
  br label %73

73:                                               ; preds = %60
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %57

76:                                               ; preds = %57
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %4, align 8
  store i8 45, i8* %77, align 1
  %79 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  store i8* %79, i8** %13, align 8
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %146, %76
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %81, 6
  br i1 %82, label %83, label %149

83:                                               ; preds = %80
  %84 = load i8*, i8** %7, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = ashr i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %84, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  store i8 %92, i8* %94, align 1
  %95 = load i8*, i8** %7, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = shl i32 %99, 4
  %101 = load i8*, i8** %13, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = ashr i32 %104, 4
  %106 = or i32 %100, %105
  %107 = and i32 %106, 63
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %95, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  store i8 %110, i8* %112, align 1
  %113 = load i8*, i8** %7, align 8
  %114 = load i8*, i8** %13, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = shl i32 %117, 2
  %119 = load i8*, i8** %13, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 2
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = ashr i32 %122, 6
  %124 = or i32 %118, %123
  %125 = and i32 %124, 63
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %113, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 2
  store i8 %128, i8* %130, align 1
  %131 = load i8*, i8** %7, align 8
  %132 = load i8*, i8** %13, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 3
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = and i32 %135, 63
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %131, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = load i8*, i8** %4, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 3
  store i8 %139, i8* %141, align 1
  %142 = load i8*, i8** %4, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 4
  store i8* %143, i8** %4, align 8
  %144 = load i8*, i8** %13, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 3
  store i8* %145, i8** %13, align 8
  br label %146

146:                                              ; preds = %83
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %12, align 4
  br label %80

149:                                              ; preds = %80
  %150 = load i8*, i8** %4, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %4, align 8
  store i8 45, i8* %150, align 1
  %152 = load i8*, i8** %8, align 8
  %153 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = and i32 %155, 240
  %157 = ashr i32 %156, 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %152, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = load i8*, i8** %4, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  store i8 %160, i8* %162, align 1
  %163 = load i8*, i8** %8, align 8
  %164 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = and i32 %166, 15
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %163, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = load i8*, i8** %4, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 1
  store i8 %170, i8* %172, align 1
  %173 = load i8*, i8** %8, align 8
  %174 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = and i32 %176, 240
  %178 = ashr i32 %177, 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %173, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = load i8*, i8** %4, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 2
  store i8 %181, i8* %183, align 1
  %184 = load i8*, i8** %8, align 8
  %185 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = and i32 %187, 15
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %184, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = load i8*, i8** %4, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 3
  store i8 %191, i8* %193, align 1
  %194 = load i8*, i8** %4, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 4
  store i8* %195, i8** %4, align 8
  ret void
}

declare dso_local i32 @SHA1Init(i32*) #1

declare dso_local i32 @SHA1Update(i32*, i8*, i32) #1

declare dso_local i32 @SHA1Final(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
