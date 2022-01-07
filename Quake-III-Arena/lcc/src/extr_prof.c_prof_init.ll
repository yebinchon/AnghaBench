; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_prof.c_prof_init.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_prof.c_prof_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.map = type { i64 }

@prof_init.inited = internal global i32 0, align 4
@IR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@ncalled = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"prof.out\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-C\00", align 1
@YYlink = common dso_local global i64 0, align 8
@STATIC = common dso_local global i32 0, align 4
@unsignedtype = common dso_local global i32 0, align 4
@GLOBAL = common dso_local global i32 0, align 4
@bbentry = common dso_local global i64 0, align 8
@events = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@bbexit = common dso_local global i64 0, align 8
@bbfunc = common dso_local global i64 0, align 8
@bbvars = common dso_local global i64 0, align 8
@YYcounts = common dso_local global i64 0, align 8
@PERM = common dso_local global i32 0, align 4
@maplist = common dso_local global %struct.TYPE_5__* null, align 8
@bbcall = common dso_local global i64 0, align 8
@bbincr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prof_init(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* @prof_init.inited, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %133

9:                                                ; preds = %2
  store i32 1, i32* @prof_init.inited, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i8**, i8*** %4, align 8
  %12 = call i32 @type_init(i32 %10, i8** %11)
  %13 = load i64, i64* @IR, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %133

15:                                               ; preds = %9
  store i32 1, i32* %5, align 4
  br label %16

16:                                               ; preds = %129, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %132

20:                                               ; preds = %16
  %21 = load i8**, i8*** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @strncmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %20
  %29 = load i32, i32* @ncalled, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = load i8**, i8*** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load i8**, i8*** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  br label %49

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48, %41
  %50 = phi i8* [ %47, %41 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %48 ]
  %51 = call i64 @process(i8* %50)
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* @ncalled, align 4
  br label %54

54:                                               ; preds = %53, %49, %28
  br label %128

55:                                               ; preds = %20
  %56 = load i8**, i8*** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %55
  %64 = load i8**, i8*** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %127

71:                                               ; preds = %63, %55
  %72 = load i64, i64* @YYlink, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %127

74:                                               ; preds = %71
  %75 = load i32, i32* @STATIC, align 4
  %76 = load i32, i32* @unsignedtype, align 4
  %77 = call i32 @array(i32 %76, i32 0, i32 0)
  %78 = load i32, i32* @GLOBAL, align 4
  %79 = call i64 @genident(i32 %75, i32 %77, i32 %78)
  store i64 %79, i64* @YYlink, align 8
  %80 = load i64, i64* @bbentry, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i64, i64* @YYlink, align 8
  %83 = call i32 @attach(i32 %81, i64 %82, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @events, i32 0, i32 5))
  %84 = load i64, i64* @bbexit, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i64, i64* @YYlink, align 8
  %87 = call i32 @attach(i32 %85, i64 %86, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @events, i32 0, i32 4))
  %88 = load i64, i64* @bbfunc, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i64, i64* @YYlink, align 8
  %91 = call i32 @attach(i32 %89, i64 %90, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @events, i32 0, i32 3))
  %92 = load i64, i64* @bbvars, align 8
  %93 = trunc i64 %92 to i32
  %94 = load i64, i64* @YYlink, align 8
  %95 = call i32 @attach(i32 %93, i64 %94, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @events, i32 0, i32 2))
  %96 = load i8**, i8*** %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %74
  %104 = load i32, i32* @STATIC, align 4
  %105 = load i32, i32* @unsignedtype, align 4
  %106 = call i32 @array(i32 %105, i32 0, i32 0)
  %107 = load i32, i32* @GLOBAL, align 4
  %108 = call i64 @genident(i32 %104, i32 %106, i32 %107)
  store i64 %108, i64* @YYcounts, align 8
  %109 = load i32, i32* @PERM, align 4
  %110 = call i32 @allocate(i32 8, i32 %109)
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** @maplist, align 8
  %112 = call %struct.TYPE_5__* @append(i32 %110, %struct.TYPE_5__* %111)
  store %struct.TYPE_5__* %112, %struct.TYPE_5__** @maplist, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** @maplist, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to %struct.map*
  %117 = getelementptr inbounds %struct.map, %struct.map* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  %118 = load i64, i64* @bbcall, align 8
  %119 = trunc i64 %118 to i32
  %120 = load i64, i64* @YYcounts, align 8
  %121 = call i32 @attach(i32 %119, i64 %120, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @events, i32 0, i32 1))
  %122 = load i64, i64* @bbincr, align 8
  %123 = trunc i64 %122 to i32
  %124 = load i64, i64* @YYcounts, align 8
  %125 = call i32 @attach(i32 %123, i64 %124, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @events, i32 0, i32 0))
  br label %126

126:                                              ; preds = %103, %74
  br label %127

127:                                              ; preds = %126, %71, %63
  br label %128

128:                                              ; preds = %127, %54
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %5, align 4
  br label %16

132:                                              ; preds = %16
  br label %133

133:                                              ; preds = %8, %132, %9
  ret void
}

declare dso_local i32 @type_init(i32, i8**) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @process(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @genident(i32, i32, i32) #1

declare dso_local i32 @array(i32, i32, i32) #1

declare dso_local i32 @attach(i32, i64, i32*) #1

declare dso_local %struct.TYPE_5__* @append(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @allocate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
