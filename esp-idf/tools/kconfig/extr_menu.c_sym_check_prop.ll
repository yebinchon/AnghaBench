; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_menu.c_sym_check_prop.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_menu.c_sym_check_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, i32, %struct.property* }
%struct.property = type { i32, %struct.TYPE_6__*, %struct.property* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { %struct.symbol* }
%struct.TYPE_4__ = type { %struct.symbol* }

@S_STRING = common dso_local global i32 0, align 4
@S_INT = common dso_local global i32 0, align 4
@S_HEX = common dso_local global i32 0, align 4
@E_SYMBOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"default for config symbol '%s' must be a single symbol\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"'%s': number is invalid\00", align 1
@S_BOOLEAN = common dso_local global i32 0, align 4
@S_TRISTATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"config symbol '%s' uses select, but is not boolean or tristate\00", align 1
@S_UNKNOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [81 x i8] c"'%s' has wrong type. 'select' only accept arguments of boolean and tristate type\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"range is only allowed for int or hex symbols\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"range is invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.symbol*)* @sym_check_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_check_prop(%struct.symbol* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.property*, align 8
  %4 = alloca %struct.symbol*, align 8
  store %struct.symbol* %0, %struct.symbol** %2, align 8
  %5 = load %struct.symbol*, %struct.symbol** %2, align 8
  %6 = getelementptr inbounds %struct.symbol, %struct.symbol* %5, i32 0, i32 2
  %7 = load %struct.property*, %struct.property** %6, align 8
  store %struct.property* %7, %struct.property** %3, align 8
  br label %8

8:                                                ; preds = %170, %1
  %9 = load %struct.property*, %struct.property** %3, align 8
  %10 = icmp ne %struct.property* %9, null
  br i1 %10, label %11, label %174

11:                                               ; preds = %8
  %12 = load %struct.property*, %struct.property** %3, align 8
  %13 = getelementptr inbounds %struct.property, %struct.property* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %168 [
    i32 130, label %15
    i32 128, label %83
    i32 129, label %129
  ]

15:                                               ; preds = %11
  %16 = load %struct.symbol*, %struct.symbol** %2, align 8
  %17 = getelementptr inbounds %struct.symbol, %struct.symbol* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @S_STRING, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = load %struct.symbol*, %struct.symbol** %2, align 8
  %23 = getelementptr inbounds %struct.symbol, %struct.symbol* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @S_INT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.symbol*, %struct.symbol** %2, align 8
  %29 = getelementptr inbounds %struct.symbol, %struct.symbol* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @S_HEX, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %27, %21, %15
  %34 = load %struct.property*, %struct.property** %3, align 8
  %35 = getelementptr inbounds %struct.property, %struct.property* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @E_SYMBOL, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.property*, %struct.property** %3, align 8
  %43 = load %struct.symbol*, %struct.symbol** %2, align 8
  %44 = getelementptr inbounds %struct.symbol, %struct.symbol* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.property*, i8*, ...) @prop_warn(%struct.property* %42, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %41, %33, %27
  %48 = load %struct.property*, %struct.property** %3, align 8
  %49 = getelementptr inbounds %struct.property, %struct.property* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @E_SYMBOL, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %169

56:                                               ; preds = %47
  %57 = load %struct.property*, %struct.property** %3, align 8
  %58 = call %struct.symbol* @prop_get_symbol(%struct.property* %57)
  store %struct.symbol* %58, %struct.symbol** %4, align 8
  %59 = load %struct.symbol*, %struct.symbol** %2, align 8
  %60 = getelementptr inbounds %struct.symbol, %struct.symbol* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @S_HEX, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %56
  %65 = load %struct.symbol*, %struct.symbol** %2, align 8
  %66 = getelementptr inbounds %struct.symbol, %struct.symbol* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @S_INT, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %64, %56
  %71 = load %struct.symbol*, %struct.symbol** %2, align 8
  %72 = load %struct.symbol*, %struct.symbol** %4, align 8
  %73 = call i32 @menu_validate_number(%struct.symbol* %71, %struct.symbol* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  %76 = load %struct.property*, %struct.property** %3, align 8
  %77 = load %struct.symbol*, %struct.symbol** %2, align 8
  %78 = getelementptr inbounds %struct.symbol, %struct.symbol* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (%struct.property*, i8*, ...) @prop_warn(%struct.property* %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %75, %70
  br label %82

82:                                               ; preds = %81, %64
  br label %169

83:                                               ; preds = %11
  %84 = load %struct.property*, %struct.property** %3, align 8
  %85 = call %struct.symbol* @prop_get_symbol(%struct.property* %84)
  store %struct.symbol* %85, %struct.symbol** %4, align 8
  %86 = load %struct.symbol*, %struct.symbol** %2, align 8
  %87 = getelementptr inbounds %struct.symbol, %struct.symbol* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @S_BOOLEAN, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %83
  %92 = load %struct.symbol*, %struct.symbol** %2, align 8
  %93 = getelementptr inbounds %struct.symbol, %struct.symbol* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @S_TRISTATE, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load %struct.property*, %struct.property** %3, align 8
  %99 = load %struct.symbol*, %struct.symbol** %2, align 8
  %100 = getelementptr inbounds %struct.symbol, %struct.symbol* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (%struct.property*, i8*, ...) @prop_warn(%struct.property* %98, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %128

103:                                              ; preds = %91, %83
  %104 = load %struct.symbol*, %struct.symbol** %4, align 8
  %105 = getelementptr inbounds %struct.symbol, %struct.symbol* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @S_UNKNOWN, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %103
  %110 = load %struct.symbol*, %struct.symbol** %4, align 8
  %111 = getelementptr inbounds %struct.symbol, %struct.symbol* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @S_BOOLEAN, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %109
  %116 = load %struct.symbol*, %struct.symbol** %4, align 8
  %117 = getelementptr inbounds %struct.symbol, %struct.symbol* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @S_TRISTATE, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load %struct.property*, %struct.property** %3, align 8
  %123 = load %struct.symbol*, %struct.symbol** %4, align 8
  %124 = getelementptr inbounds %struct.symbol, %struct.symbol* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (%struct.property*, i8*, ...) @prop_warn(%struct.property* %122, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %121, %115, %109, %103
  br label %128

128:                                              ; preds = %127, %97
  br label %169

129:                                              ; preds = %11
  %130 = load %struct.symbol*, %struct.symbol** %2, align 8
  %131 = getelementptr inbounds %struct.symbol, %struct.symbol* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @S_INT, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %129
  %136 = load %struct.symbol*, %struct.symbol** %2, align 8
  %137 = getelementptr inbounds %struct.symbol, %struct.symbol* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @S_HEX, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load %struct.property*, %struct.property** %3, align 8
  %143 = call i32 (%struct.property*, i8*, ...) @prop_warn(%struct.property* %142, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %135, %129
  %145 = load %struct.symbol*, %struct.symbol** %2, align 8
  %146 = load %struct.property*, %struct.property** %3, align 8
  %147 = getelementptr inbounds %struct.property, %struct.property* %146, i32 0, i32 1
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load %struct.symbol*, %struct.symbol** %150, align 8
  %152 = call i32 @menu_validate_number(%struct.symbol* %145, %struct.symbol* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %144
  %155 = load %struct.symbol*, %struct.symbol** %2, align 8
  %156 = load %struct.property*, %struct.property** %3, align 8
  %157 = getelementptr inbounds %struct.property, %struct.property* %156, i32 0, i32 1
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load %struct.symbol*, %struct.symbol** %160, align 8
  %162 = call i32 @menu_validate_number(%struct.symbol* %155, %struct.symbol* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %154, %144
  %165 = load %struct.property*, %struct.property** %3, align 8
  %166 = call i32 (%struct.property*, i8*, ...) @prop_warn(%struct.property* %165, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %167

167:                                              ; preds = %164, %154
  br label %169

168:                                              ; preds = %11
  br label %169

169:                                              ; preds = %168, %167, %128, %82, %55
  br label %170

170:                                              ; preds = %169
  %171 = load %struct.property*, %struct.property** %3, align 8
  %172 = getelementptr inbounds %struct.property, %struct.property* %171, i32 0, i32 2
  %173 = load %struct.property*, %struct.property** %172, align 8
  store %struct.property* %173, %struct.property** %3, align 8
  br label %8

174:                                              ; preds = %8
  ret void
}

declare dso_local i32 @prop_warn(%struct.property*, i8*, ...) #1

declare dso_local %struct.symbol* @prop_get_symbol(%struct.property*) #1

declare dso_local i32 @menu_validate_number(%struct.symbol*, %struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
