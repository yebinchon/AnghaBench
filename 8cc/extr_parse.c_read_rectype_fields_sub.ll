; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_rectype_fields_sub.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_rectype_fields_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }

@KSTATIC_ASSERT = common dso_local global i8 0, align 1
@KIND_STRUCT = common dso_local global i64 0, align 8
@DECL_PARAM_TYPEONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"missing ';' at the end of field list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @read_rectype_fields_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_rectype_fields_sub() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = call i32* (...) @make_vector()
  store i32* %5, i32** %1, align 8
  br label %6

6:                                                ; preds = %70, %27, %10, %0
  %7 = load i8, i8* @KSTATIC_ASSERT, align 1
  %8 = call i64 @next_token(i8 signext %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call i32 (...) @read_static_assert()
  br label %6

12:                                               ; preds = %6
  %13 = call i32 (...) @peek()
  %14 = call i32 @is_type(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %71

17:                                               ; preds = %12
  %18 = call %struct.TYPE_10__* @read_decl_spec(i32* null)
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %2, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @KIND_STRUCT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = call i64 @next_token(i8 signext 59)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32*, i32** %1, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = call i32 @make_pair(i8* null, %struct.TYPE_10__* %29)
  %31 = call i32 @vec_push(i32* %28, i32 %30)
  br label %6

32:                                               ; preds = %24, %17
  br label %33

33:                                               ; preds = %59, %32
  store i8* null, i8** %3, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = load i32, i32* @DECL_PARAM_TYPEONLY, align 4
  %36 = call %struct.TYPE_10__* @read_declarator(i8** %3, %struct.TYPE_10__* %34, i32* null, i32 %35)
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %4, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = call i32 @ensure_not_void(%struct.TYPE_10__* %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = call %struct.TYPE_10__* @copy_type(%struct.TYPE_10__* %39)
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %4, align 8
  %41 = call i64 @next_token(i8 signext 58)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load i8*, i8** %3, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = call i32 @read_bitsize(i8* %44, %struct.TYPE_10__* %45)
  br label %48

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i32 [ %46, %43 ], [ -1, %47 ]
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i32*, i32** %1, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = call i32 @make_pair(i8* %53, %struct.TYPE_10__* %54)
  %56 = call i32 @vec_push(i32* %52, i32 %55)
  %57 = call i64 @next_token(i8 signext 44)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %33

60:                                               ; preds = %48
  %61 = call i32 (...) @peek()
  %62 = call i64 @is_keyword(i32 %61, i8 signext 125)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = call i32 (...) @peek()
  %66 = call i32 @warnt(i32 %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %69

67:                                               ; preds = %60
  %68 = call i32 @expect(i8 signext 59)
  br label %69

69:                                               ; preds = %67, %64
  br label %70

70:                                               ; preds = %69
  br label %6

71:                                               ; preds = %16
  %72 = call i32 @expect(i8 signext 125)
  %73 = load i32*, i32** %1, align 8
  ret i32* %73
}

declare dso_local i32* @make_vector(...) #1

declare dso_local i64 @next_token(i8 signext) #1

declare dso_local i32 @read_static_assert(...) #1

declare dso_local i32 @is_type(i32) #1

declare dso_local i32 @peek(...) #1

declare dso_local %struct.TYPE_10__* @read_decl_spec(i32*) #1

declare dso_local i32 @vec_push(i32*, i32) #1

declare dso_local i32 @make_pair(i8*, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @read_declarator(i8**, %struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @ensure_not_void(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @copy_type(%struct.TYPE_10__*) #1

declare dso_local i32 @read_bitsize(i8*, %struct.TYPE_10__*) #1

declare dso_local i64 @is_keyword(i32, i8 signext) #1

declare dso_local i32 @warnt(i32, i8*) #1

declare dso_local i32 @expect(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
