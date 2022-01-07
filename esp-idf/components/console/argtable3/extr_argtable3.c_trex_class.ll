; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_trex_class.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_trex_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }

@TREX_SYMBOL_BEGINNING_OF_STRING = common dso_local global i8 0, align 1
@OP_NCLASS = common dso_local global i32 0, align 4
@OP_CLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"empty class\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"unfinished range\00", align 1
@OP_RANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@OP_CCLASS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"cannot use character classes in ranges\00", align 1
@TRex_True = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @trex_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trex_class(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32 -1, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = load i8, i8* @TREX_SYMBOL_BEGINNING_OF_STRING, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = load i32, i32* @OP_NCLASS, align 4
  %21 = call i32 @trex_newnode(%struct.TYPE_9__* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %23, align 8
  br label %30

26:                                               ; preds = %1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = load i32, i32* @OP_CLASS, align 4
  %29 = call i32 @trex_newnode(%struct.TYPE_9__* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %18
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 93
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = call i32 @_SC(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @trex_error(%struct.TYPE_9__* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %30
  %42 = load i32, i32* %3, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %170, %41
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 93
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %53, %56
  br label %58

58:                                               ; preds = %50, %43
  %59 = phi i1 [ false, %43 ], [ %57, %50 ]
  br i1 %59, label %60, label %171

60:                                               ; preds = %58
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 45
  br i1 %66, label %67, label %148

67:                                               ; preds = %60
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, -1
  br i1 %69, label %70, label %148

70:                                               ; preds = %67
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %72, align 8
  %75 = load i8, i8* %73, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 93
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %80 = call i32 @_SC(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %81 = call i32 @trex_error(%struct.TYPE_9__* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %70
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %84 = load i32, i32* @OP_RANGE, align 4
  %85 = call i32 @trex_newnode(%struct.TYPE_9__* %83, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp sgt i32 %86, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %82
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %95 = call i32 @_SC(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %96 = call i32 @trex_error(%struct.TYPE_9__* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %82
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @OP_CCLASS, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %97
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %110 = call i32 @_SC(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %111 = call i32 @trex_error(%struct.TYPE_9__* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %97
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  store i32 %121, i32* %128, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %130 = call i32 @trex_escapechar(%struct.TYPE_9__* %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  store i32 %131, i32* %138, align 4
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 3
  store i32 %139, i32* %146, align 8
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %5, align 4
  store i32 -1, i32* %4, align 4
  br label %170

148:                                              ; preds = %67, %60
  %149 = load i32, i32* %4, align 4
  %150 = icmp ne i32 %149, -1
  br i1 %150, label %151, label %165

151:                                              ; preds = %148
  %152 = load i32, i32* %4, align 4
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 3
  store i32 %153, i32* %160, align 8
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* %5, align 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %163 = load i32, i32* @TRex_True, align 4
  %164 = call i32 @trex_charnode(%struct.TYPE_9__* %162, i32 %163)
  store i32 %164, i32* %4, align 4
  br label %169

165:                                              ; preds = %148
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %167 = load i32, i32* @TRex_True, align 4
  %168 = call i32 @trex_charnode(%struct.TYPE_9__* %166, i32 %167)
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %165, %151
  br label %170

170:                                              ; preds = %169, %112
  br label %43

171:                                              ; preds = %58
  %172 = load i32, i32* %4, align 4
  %173 = icmp ne i32 %172, -1
  br i1 %173, label %174, label %185

174:                                              ; preds = %171
  %175 = load i32, i32* %4, align 4
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 3
  store i32 %176, i32* %183, align 8
  %184 = load i32, i32* %9, align 4
  store i32 %184, i32* %5, align 4
  store i32 -1, i32* %4, align 4
  br label %185

185:                                              ; preds = %174, %171
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  %189 = load i32, i32* %3, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = load i32, i32* %3, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  store i32 %193, i32* %200, align 8
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = load i32, i32* %3, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 3
  store i32 -1, i32* %207, align 8
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local i32 @trex_newnode(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @trex_error(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @_SC(i8*) #1

declare dso_local i32 @trex_escapechar(%struct.TYPE_9__*) #1

declare dso_local i32 @trex_charnode(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
