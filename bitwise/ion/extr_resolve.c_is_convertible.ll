; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_is_convertible.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_is_convertible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_22__*, %struct.TYPE_21__, %struct.TYPE_19__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_22__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }

@type_any = common dso_local global %struct.TYPE_22__* null, align 8
@type_void = common dso_local global %struct.TYPE_22__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_convertible(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %9 = call %struct.TYPE_22__* @unqualify_type(%struct.TYPE_22__* %8)
  store %struct.TYPE_22__* %9, %struct.TYPE_22__** %5, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %13 = call %struct.TYPE_22__* @unqualify_type(%struct.TYPE_22__* %12)
  store %struct.TYPE_22__* %13, %struct.TYPE_22__** %6, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %16 = icmp eq %struct.TYPE_22__* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %175

18:                                               ; preds = %2
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %20 = call i64 @is_func_type(%struct.TYPE_22__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %175

29:                                               ; preds = %22, %18
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** @type_any, align 8
  %32 = icmp eq %struct.TYPE_22__* %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** @type_void, align 8
  %36 = icmp eq %struct.TYPE_22__* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %29
  store i32 1, i32* %3, align 4
  br label %175

38:                                               ; preds = %33
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %40 = call i64 @is_arithmetic_type(%struct.TYPE_22__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %44 = call i64 @is_arithmetic_type(%struct.TYPE_22__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %175

47:                                               ; preds = %42, %38
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %49 = call i64 @is_ptr_like_type(%struct.TYPE_22__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %53, align 8
  %55 = call i64 @is_null_ptr(%struct.TYPE_22__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %175

58:                                               ; preds = %51, %47
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %60 = call i64 @is_ptr_type(%struct.TYPE_22__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %174

62:                                               ; preds = %58
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %64 = call i64 @is_ptr_type(%struct.TYPE_22__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %174

66:                                               ; preds = %62
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %68, align 8
  %70 = call i64 @is_const_type(%struct.TYPE_22__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %109

72:                                               ; preds = %66
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %74, align 8
  %76 = call i64 @is_const_type(%struct.TYPE_22__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %109

78:                                               ; preds = %72
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %82, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %87, align 8
  %89 = icmp eq %struct.TYPE_22__* %83, %88
  br i1 %89, label %106, label %90

90:                                               ; preds = %78
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %94, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** @type_void, align 8
  %97 = icmp eq %struct.TYPE_22__* %95, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %90
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %102, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** @type_void, align 8
  %105 = icmp eq %struct.TYPE_22__* %103, %104
  br label %106

106:                                              ; preds = %98, %90, %78
  %107 = phi i1 [ true, %90 ], [ true, %78 ], [ %105, %98 ]
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %3, align 4
  br label %175

109:                                              ; preds = %72, %66
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %111, align 8
  %113 = call i64 @is_aggregate_type(%struct.TYPE_22__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %109
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %117, align 8
  %119 = call i64 @is_aggregate_type(%struct.TYPE_22__* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %115
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %123, align 8
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %132, align 8
  %134 = icmp eq %struct.TYPE_22__* %124, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %121
  store i32 1, i32* %3, align 4
  br label %175

136:                                              ; preds = %121, %115, %109
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %138, align 8
  %140 = call %struct.TYPE_22__* @unqualify_type(%struct.TYPE_22__* %139)
  store %struct.TYPE_22__* %140, %struct.TYPE_22__** %7, align 8
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %143, align 8
  %145 = icmp eq %struct.TYPE_22__* %141, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %136
  store i32 1, i32* %3, align 4
  br label %175

147:                                              ; preds = %136
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** @type_void, align 8
  %150 = icmp eq %struct.TYPE_22__* %148, %149
  br i1 %150, label %151, label %167

151:                                              ; preds = %147
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %153, align 8
  %155 = call i64 @is_const_type(%struct.TYPE_22__* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %151
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %159, align 8
  %161 = call i64 @is_const_type(%struct.TYPE_22__* %160)
  %162 = icmp ne i64 %161, 0
  %163 = xor i1 %162, true
  br label %164

164:                                              ; preds = %157, %151
  %165 = phi i1 [ true, %151 ], [ %163, %157 ]
  %166 = zext i1 %165 to i32
  store i32 %166, i32* %3, align 4
  br label %175

167:                                              ; preds = %147
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %169, align 8
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** @type_void, align 8
  %172 = icmp eq %struct.TYPE_22__* %170, %171
  %173 = zext i1 %172 to i32
  store i32 %173, i32* %3, align 4
  br label %175

174:                                              ; preds = %62, %58
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %174, %167, %164, %146, %135, %106, %57, %46, %37, %28, %17
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local %struct.TYPE_22__* @unqualify_type(%struct.TYPE_22__*) #1

declare dso_local i64 @is_func_type(%struct.TYPE_22__*) #1

declare dso_local i64 @is_arithmetic_type(%struct.TYPE_22__*) #1

declare dso_local i64 @is_ptr_like_type(%struct.TYPE_22__*) #1

declare dso_local i64 @is_null_ptr(%struct.TYPE_22__*) #1

declare dso_local i64 @is_ptr_type(%struct.TYPE_22__*) #1

declare dso_local i64 @is_const_type(%struct.TYPE_22__*) #1

declare dso_local i64 @is_aggregate_type(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
