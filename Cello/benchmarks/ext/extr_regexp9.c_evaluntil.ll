; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_evaluntil.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_evaluntil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__*, i8* }

@RBRA = common dso_local global i32 0, align 4
@atorp = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"unknown operator in evaluntil\00", align 1
@subidp = common dso_local global i8** null, align 8
@NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @evaluntil to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evaluntil(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %2, align 4
  br label %7

7:                                                ; preds = %166, %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @RBRA, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = load i32*, i32** @atorp, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 -1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp sge i32 %14, %15
  br label %17

17:                                               ; preds = %11, %7
  %18 = phi i1 [ true, %7 ], [ %16, %11 ]
  br i1 %18, label %19, label %167

19:                                               ; preds = %17
  %20 = call i32 (...) @popator()
  switch i32 %20, label %21 [
    i32 132, label %23
    i32 131, label %53
    i32 133, label %86
    i32 128, label %104
    i32 130, label %122
    i32 129, label %142
  ]

21:                                               ; preds = %19
  %22 = call i32 @rcerror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %166

23:                                               ; preds = %19
  %24 = call %struct.TYPE_12__* @popand(i8 signext 40)
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %3, align 8
  %25 = load i32, i32* @RBRA, align 4
  %26 = call %struct.TYPE_11__* @newinst(i32 %25)
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %6, align 8
  %27 = load i8**, i8*** @subidp, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  store i8* %28, i8** %31, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %37, align 8
  %38 = call %struct.TYPE_11__* @newinst(i32 132)
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %5, align 8
  %39 = load i8**, i8*** @subidp, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %49, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = call i32 @pushand(%struct.TYPE_11__* %50, %struct.TYPE_11__* %51)
  br label %167

53:                                               ; preds = %19
  %54 = call %struct.TYPE_12__* @popand(i8 signext 124)
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %4, align 8
  %55 = call %struct.TYPE_12__* @popand(i8 signext 124)
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %3, align 8
  %56 = load i32, i32* @NOP, align 4
  %57 = call %struct.TYPE_11__* @newinst(i32 %56)
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %6, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %69, align 8
  %70 = call %struct.TYPE_11__* @newinst(i32 131)
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %5, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %76, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  store %struct.TYPE_11__* %79, %struct.TYPE_11__** %82, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = call i32 @pushand(%struct.TYPE_11__* %83, %struct.TYPE_11__* %84)
  br label %166

86:                                               ; preds = %19
  %87 = call %struct.TYPE_12__* @popand(i8 signext 0)
  store %struct.TYPE_12__* %87, %struct.TYPE_12__** %4, align 8
  %88 = call %struct.TYPE_12__* @popand(i8 signext 0)
  store %struct.TYPE_12__* %88, %struct.TYPE_12__** %3, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %96, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = call i32 @pushand(%struct.TYPE_11__* %99, %struct.TYPE_11__* %102)
  br label %166

104:                                              ; preds = %19
  %105 = call %struct.TYPE_12__* @popand(i8 signext 42)
  store %struct.TYPE_12__* %105, %struct.TYPE_12__** %4, align 8
  %106 = call %struct.TYPE_11__* @newinst(i32 131)
  store %struct.TYPE_11__* %106, %struct.TYPE_11__** %5, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  store %struct.TYPE_11__* %107, %struct.TYPE_11__** %112, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  store %struct.TYPE_11__* %115, %struct.TYPE_11__** %118, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %121 = call i32 @pushand(%struct.TYPE_11__* %119, %struct.TYPE_11__* %120)
  br label %166

122:                                              ; preds = %19
  %123 = call %struct.TYPE_12__* @popand(i8 signext 43)
  store %struct.TYPE_12__* %123, %struct.TYPE_12__** %4, align 8
  %124 = call %struct.TYPE_11__* @newinst(i32 131)
  store %struct.TYPE_11__* %124, %struct.TYPE_11__** %5, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  store %struct.TYPE_11__* %125, %struct.TYPE_11__** %130, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  store %struct.TYPE_11__* %133, %struct.TYPE_11__** %136, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %141 = call i32 @pushand(%struct.TYPE_11__* %139, %struct.TYPE_11__* %140)
  br label %166

142:                                              ; preds = %19
  %143 = call %struct.TYPE_12__* @popand(i8 signext 63)
  store %struct.TYPE_12__* %143, %struct.TYPE_12__** %4, align 8
  %144 = call %struct.TYPE_11__* @newinst(i32 131)
  store %struct.TYPE_11__* %144, %struct.TYPE_11__** %5, align 8
  %145 = load i32, i32* @NOP, align 4
  %146 = call %struct.TYPE_11__* @newinst(i32 %145)
  store %struct.TYPE_11__* %146, %struct.TYPE_11__** %6, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  store %struct.TYPE_11__* %147, %struct.TYPE_11__** %150, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  store %struct.TYPE_11__* %153, %struct.TYPE_11__** %156, align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  store %struct.TYPE_11__* %157, %struct.TYPE_11__** %162, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %165 = call i32 @pushand(%struct.TYPE_11__* %163, %struct.TYPE_11__* %164)
  br label %166

166:                                              ; preds = %142, %122, %104, %86, %53, %21
  br label %7

167:                                              ; preds = %23, %17
  ret void
}

declare dso_local i32 @popator(...) #1

declare dso_local i32 @rcerror(i8*) #1

declare dso_local %struct.TYPE_12__* @popand(i8 signext) #1

declare dso_local %struct.TYPE_11__* @newinst(i32) #1

declare dso_local i32 @pushand(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
