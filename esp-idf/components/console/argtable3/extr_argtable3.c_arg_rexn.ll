; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_rexn.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_rexn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_rex = type { i8**, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i32, i32, %struct.arg_rex*, i32*, i32*, i32*, i32*, %struct.arg_rex*, i32 }
%struct.privhdr = type { i8*, i32 }

@.str = private unnamed_addr constant [63 x i8] c"argtable: ERROR - illegal regular expression pattern \22(NULL)\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"argtable: Bad argument table.\0A\00", align 1
@ARG_HASVALUE = common dso_local global i32 0, align 4
@arg_rex_resetfn = common dso_local global i64 0, align 8
@arg_rex_scanfn = common dso_local global i64 0, align 8
@arg_rex_checkfn = common dso_local global i64 0, align 8
@arg_rex_errorfn = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"argtable: %s \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"arg_rexn() returns %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.arg_rex* @arg_rexn(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca %struct.arg_rex*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.arg_rex*, align 8
  %20 = alloca %struct.privhdr*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i32* null, i32** %22, align 8
  store i32* null, i32** %23, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %8
  %27 = call i32 @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store %struct.arg_rex* null, %struct.arg_rex** %9, align 8
  br label %178

29:                                               ; preds = %8
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %14, align 4
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %15, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 8
  %42 = add i64 128, %41
  store i64 %42, i64* %18, align 8
  %43 = load i64, i64* %18, align 8
  %44 = call i64 @malloc(i64 %43)
  %45 = inttoptr i64 %44 to %struct.arg_rex*
  store %struct.arg_rex* %45, %struct.arg_rex** %19, align 8
  %46 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  %47 = icmp eq %struct.arg_rex* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  store %struct.arg_rex* %49, %struct.arg_rex** %9, align 8
  br label %178

50:                                               ; preds = %37
  %51 = load i32, i32* @ARG_HASVALUE, align 4
  %52 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  %53 = getelementptr inbounds %struct.arg_rex, %struct.arg_rex* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 12
  store i32 %51, i32* %54, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  %57 = getelementptr inbounds %struct.arg_rex, %struct.arg_rex* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  %61 = getelementptr inbounds %struct.arg_rex, %struct.arg_rex* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  %66 = load i8*, i8** %13, align 8
  br label %69

67:                                               ; preds = %50
  %68 = load i8*, i8** %12, align 8
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i8* [ %66, %65 ], [ %68, %67 ]
  %71 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  %72 = getelementptr inbounds %struct.arg_rex, %struct.arg_rex* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i8* %70, i8** %73, align 8
  %74 = load i8*, i8** %17, align 8
  %75 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  %76 = getelementptr inbounds %struct.arg_rex, %struct.arg_rex* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  store i8* %74, i8** %77, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  %80 = getelementptr inbounds %struct.arg_rex, %struct.arg_rex* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  %84 = getelementptr inbounds %struct.arg_rex, %struct.arg_rex* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 5
  store i32 %82, i32* %85, align 4
  %86 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  %87 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  %88 = getelementptr inbounds %struct.arg_rex, %struct.arg_rex* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 11
  store %struct.arg_rex* %86, %struct.arg_rex** %89, align 8
  %90 = load i64, i64* @arg_rex_resetfn, align 8
  %91 = inttoptr i64 %90 to i32*
  %92 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  %93 = getelementptr inbounds %struct.arg_rex, %struct.arg_rex* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 10
  store i32* %91, i32** %94, align 8
  %95 = load i64, i64* @arg_rex_scanfn, align 8
  %96 = inttoptr i64 %95 to i32*
  %97 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  %98 = getelementptr inbounds %struct.arg_rex, %struct.arg_rex* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 9
  store i32* %96, i32** %99, align 8
  %100 = load i64, i64* @arg_rex_checkfn, align 8
  %101 = inttoptr i64 %100 to i32*
  %102 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  %103 = getelementptr inbounds %struct.arg_rex, %struct.arg_rex* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 8
  store i32* %101, i32** %104, align 8
  %105 = load i64, i64* @arg_rex_errorfn, align 8
  %106 = inttoptr i64 %105 to i32*
  %107 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  %108 = getelementptr inbounds %struct.arg_rex, %struct.arg_rex* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 7
  store i32* %106, i32** %109, align 8
  %110 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  %111 = getelementptr inbounds %struct.arg_rex, %struct.arg_rex* %110, i64 1
  %112 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  %113 = getelementptr inbounds %struct.arg_rex, %struct.arg_rex* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 6
  store %struct.arg_rex* %111, %struct.arg_rex** %114, align 8
  %115 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  %116 = getelementptr inbounds %struct.arg_rex, %struct.arg_rex* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 6
  %118 = load %struct.arg_rex*, %struct.arg_rex** %117, align 8
  %119 = bitcast %struct.arg_rex* %118 to %struct.privhdr*
  store %struct.privhdr* %119, %struct.privhdr** %20, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = load %struct.privhdr*, %struct.privhdr** %20, align 8
  %122 = getelementptr inbounds %struct.privhdr, %struct.privhdr* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  %123 = load i32, i32* %16, align 4
  %124 = load %struct.privhdr*, %struct.privhdr** %20, align 8
  %125 = getelementptr inbounds %struct.privhdr, %struct.privhdr* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  %126 = load %struct.privhdr*, %struct.privhdr** %20, align 8
  %127 = getelementptr inbounds %struct.privhdr, %struct.privhdr* %126, i64 1
  %128 = bitcast %struct.privhdr* %127 to i8**
  %129 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  %130 = getelementptr inbounds %struct.arg_rex, %struct.arg_rex* %129, i32 0, i32 0
  store i8** %128, i8*** %130, align 8
  %131 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  %132 = getelementptr inbounds %struct.arg_rex, %struct.arg_rex* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  store i32 0, i32* %21, align 4
  br label %133

133:                                              ; preds = %144, %69
  %134 = load i32, i32* %21, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %133
  %138 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  %139 = getelementptr inbounds %struct.arg_rex, %struct.arg_rex* %138, i32 0, i32 0
  %140 = load i8**, i8*** %139, align 8
  %141 = load i32, i32* %21, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %143, align 8
  br label %144

144:                                              ; preds = %137
  %145 = load i32, i32* %21, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %21, align 4
  br label %133

147:                                              ; preds = %133
  %148 = load %struct.privhdr*, %struct.privhdr** %20, align 8
  %149 = getelementptr inbounds %struct.privhdr, %struct.privhdr* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.privhdr*, %struct.privhdr** %20, align 8
  %152 = getelementptr inbounds %struct.privhdr, %struct.privhdr* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32* @trex_compile(i8* %150, i32** %22, i32 %153)
  store i32* %154, i32** %23, align 8
  %155 = load i32*, i32** %23, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %171

157:                                              ; preds = %147
  %158 = load i32*, i32** %22, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i32*, i32** %22, align 8
  br label %164

162:                                              ; preds = %157
  %163 = call i32* @_TREXC(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i32* [ %161, %160 ], [ %163, %162 ]
  %166 = load %struct.privhdr*, %struct.privhdr** %20, align 8
  %167 = getelementptr inbounds %struct.privhdr, %struct.privhdr* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @ARG_LOG(i8* %168)
  %170 = call i32 @ARG_LOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %171

171:                                              ; preds = %164, %147
  %172 = load i32*, i32** %23, align 8
  %173 = call i32 @trex_free(i32* %172)
  %174 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  %175 = bitcast %struct.arg_rex* %174 to i8*
  %176 = call i32 @ARG_TRACE(i8* %175)
  %177 = load %struct.arg_rex*, %struct.arg_rex** %19, align 8
  store %struct.arg_rex* %177, %struct.arg_rex** %9, align 8
  br label %178

178:                                              ; preds = %171, %48, %26
  %179 = load %struct.arg_rex*, %struct.arg_rex** %9, align 8
  ret %struct.arg_rex* %179
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32* @trex_compile(i8*, i32**, i32) #1

declare dso_local i32 @ARG_LOG(i8*) #1

declare dso_local i32* @_TREXC(i8*) #1

declare dso_local i32 @trex_free(i32*) #1

declare dso_local i32 @ARG_TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
