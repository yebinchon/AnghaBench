; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_expr_new.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_expr_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_29__, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_26__*, %struct.TYPE_28__*, %struct.TYPE_27__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_30__* }
%struct.TYPE_31__ = type { %struct.TYPE_30__*, i32 }

@type_allocator_ptr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [104 x i8] c"Allocator of new must have type Allocator* or be pointer to struct with leading field of type Allocator\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Length argument of new must have integer type\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"New with void argument must have expected pointer type\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Argument to new[] must have pointer type\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Argument to new must be lvalue\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Type of argument to new has zero size\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { %struct.TYPE_30__*, i32 } @resolve_expr_new(%struct.TYPE_32__* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca %struct.TYPE_31__, align 8
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_31__, align 8
  %7 = alloca %struct.TYPE_31__, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_31__, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  %10 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %14 = icmp ne %struct.TYPE_27__* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %2
  %16 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %20 = call { %struct.TYPE_30__*, i32 } @resolve_expr(%struct.TYPE_27__* %19)
  %21 = bitcast %struct.TYPE_31__* %6 to { %struct.TYPE_30__*, i32 }*
  %22 = getelementptr inbounds { %struct.TYPE_30__*, i32 }, { %struct.TYPE_30__*, i32 }* %21, i32 0, i32 0
  %23 = extractvalue { %struct.TYPE_30__*, i32 } %20, 0
  store %struct.TYPE_30__* %23, %struct.TYPE_30__** %22, align 8
  %24 = getelementptr inbounds { %struct.TYPE_30__*, i32 }, { %struct.TYPE_30__*, i32 }* %21, i32 0, i32 1
  %25 = extractvalue { %struct.TYPE_30__*, i32 } %20, 1
  store i32 %25, i32* %24, align 8
  %26 = load i32, i32* @type_allocator_ptr, align 4
  %27 = call i32 @convert_operand(%struct.TYPE_31__* %6, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %15
  %30 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @fatal_error(i32 %35, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %29, %15
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %41, align 8
  %43 = icmp ne %struct.TYPE_26__* %42, null
  br i1 %43, label %44, label %68

44:                                               ; preds = %38
  %45 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %47, align 8
  %49 = call { %struct.TYPE_30__*, i32 } @resolve_expr_rvalue(%struct.TYPE_26__* %48)
  %50 = bitcast %struct.TYPE_31__* %7 to { %struct.TYPE_30__*, i32 }*
  %51 = getelementptr inbounds { %struct.TYPE_30__*, i32 }, { %struct.TYPE_30__*, i32 }* %50, i32 0, i32 0
  %52 = extractvalue { %struct.TYPE_30__*, i32 } %49, 0
  store %struct.TYPE_30__* %52, %struct.TYPE_30__** %51, align 8
  %53 = getelementptr inbounds { %struct.TYPE_30__*, i32 }, { %struct.TYPE_30__*, i32 }* %50, i32 0, i32 1
  %54 = extractvalue { %struct.TYPE_30__*, i32 } %49, 1
  store i32 %54, i32* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %7, i32 0, i32 0
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %55, align 8
  %57 = call i32 @is_integer_type(%struct.TYPE_30__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %44
  %60 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @fatal_error(i32 %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %59, %44
  br label %68

68:                                               ; preds = %67, %38
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %8, align 8
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %70 = call i64 @is_ptr_type(%struct.TYPE_30__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %74, align 8
  store %struct.TYPE_30__* %75, %struct.TYPE_30__** %8, align 8
  br label %76

76:                                               ; preds = %72, %68
  %77 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %79, align 8
  %81 = icmp ne %struct.TYPE_28__* %80, null
  br i1 %81, label %101, label %82

82:                                               ; preds = %76
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %84 = call %struct.TYPE_30__* @type_decay(%struct.TYPE_30__* %83)
  store %struct.TYPE_30__* %84, %struct.TYPE_30__** %5, align 8
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %86 = call i64 @is_ptr_type(%struct.TYPE_30__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %82
  %89 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @fatal_error(i32 %91, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %88, %82
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %95 = call { %struct.TYPE_30__*, i32 } @operand_rvalue(%struct.TYPE_30__* %94)
  %96 = bitcast %struct.TYPE_31__* %3 to { %struct.TYPE_30__*, i32 }*
  %97 = getelementptr inbounds { %struct.TYPE_30__*, i32 }, { %struct.TYPE_30__*, i32 }* %96, i32 0, i32 0
  %98 = extractvalue { %struct.TYPE_30__*, i32 } %95, 0
  store %struct.TYPE_30__* %98, %struct.TYPE_30__** %97, align 8
  %99 = getelementptr inbounds { %struct.TYPE_30__*, i32 }, { %struct.TYPE_30__*, i32 }* %96, i32 0, i32 1
  %100 = extractvalue { %struct.TYPE_30__*, i32 } %95, 1
  store i32 %100, i32* %99, align 8
  br label %192

101:                                              ; preds = %76
  %102 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %104, align 8
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %108, align 8
  %110 = icmp ne %struct.TYPE_26__* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  br label %115

113:                                              ; preds = %101
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi %struct.TYPE_30__* [ %112, %111 ], [ %114, %113 ]
  %117 = call { %struct.TYPE_30__*, i32 } @resolve_expected_expr(%struct.TYPE_28__* %105, %struct.TYPE_30__* %116)
  %118 = bitcast %struct.TYPE_31__* %9 to { %struct.TYPE_30__*, i32 }*
  %119 = getelementptr inbounds { %struct.TYPE_30__*, i32 }, { %struct.TYPE_30__*, i32 }* %118, i32 0, i32 0
  %120 = extractvalue { %struct.TYPE_30__*, i32 } %117, 0
  store %struct.TYPE_30__* %120, %struct.TYPE_30__** %119, align 8
  %121 = getelementptr inbounds { %struct.TYPE_30__*, i32 }, { %struct.TYPE_30__*, i32 }* %118, i32 0, i32 1
  %122 = extractvalue { %struct.TYPE_30__*, i32 } %117, 1
  store i32 %122, i32* %121, align 8
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %125, align 8
  %127 = icmp ne %struct.TYPE_26__* %126, null
  br i1 %127, label %128, label %142

128:                                              ; preds = %115
  %129 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %129, align 8
  %131 = call i64 @is_ptr_type(%struct.TYPE_30__* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %128
  %134 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @fatal_error(i32 %139, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %141

141:                                              ; preds = %133, %128
  br label %155

142:                                              ; preds = %115
  %143 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %142
  %147 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @fatal_error(i32 %152, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %154

154:                                              ; preds = %146, %142
  br label %155

155:                                              ; preds = %154, %141
  %156 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %156, align 8
  %158 = call i32 @complete_type(%struct.TYPE_30__* %157)
  %159 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %159, align 8
  %161 = call i64 @type_sizeof(%struct.TYPE_30__* %160)
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %155
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @fatal_error(i32 %169, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %171

171:                                              ; preds = %163, %155
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %174, align 8
  %176 = icmp ne %struct.TYPE_26__* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %179 = load %struct.TYPE_30__*, %struct.TYPE_30__** %178, align 8
  br label %184

180:                                              ; preds = %171
  %181 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %182 = load %struct.TYPE_30__*, %struct.TYPE_30__** %181, align 8
  %183 = call %struct.TYPE_30__* @type_ptr(%struct.TYPE_30__* %182)
  br label %184

184:                                              ; preds = %180, %177
  %185 = phi %struct.TYPE_30__* [ %179, %177 ], [ %183, %180 ]
  %186 = call { %struct.TYPE_30__*, i32 } @operand_rvalue(%struct.TYPE_30__* %185)
  %187 = bitcast %struct.TYPE_31__* %3 to { %struct.TYPE_30__*, i32 }*
  %188 = getelementptr inbounds { %struct.TYPE_30__*, i32 }, { %struct.TYPE_30__*, i32 }* %187, i32 0, i32 0
  %189 = extractvalue { %struct.TYPE_30__*, i32 } %186, 0
  store %struct.TYPE_30__* %189, %struct.TYPE_30__** %188, align 8
  %190 = getelementptr inbounds { %struct.TYPE_30__*, i32 }, { %struct.TYPE_30__*, i32 }* %187, i32 0, i32 1
  %191 = extractvalue { %struct.TYPE_30__*, i32 } %186, 1
  store i32 %191, i32* %190, align 8
  br label %192

192:                                              ; preds = %184, %93
  %193 = bitcast %struct.TYPE_31__* %3 to { %struct.TYPE_30__*, i32 }*
  %194 = load { %struct.TYPE_30__*, i32 }, { %struct.TYPE_30__*, i32 }* %193, align 8
  ret { %struct.TYPE_30__*, i32 } %194
}

declare dso_local { %struct.TYPE_30__*, i32 } @resolve_expr(%struct.TYPE_27__*) #1

declare dso_local i32 @convert_operand(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @fatal_error(i32, i8*) #1

declare dso_local { %struct.TYPE_30__*, i32 } @resolve_expr_rvalue(%struct.TYPE_26__*) #1

declare dso_local i32 @is_integer_type(%struct.TYPE_30__*) #1

declare dso_local i64 @is_ptr_type(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_30__* @type_decay(%struct.TYPE_30__*) #1

declare dso_local { %struct.TYPE_30__*, i32 } @operand_rvalue(%struct.TYPE_30__*) #1

declare dso_local { %struct.TYPE_30__*, i32 } @resolve_expected_expr(%struct.TYPE_28__*, %struct.TYPE_30__*) #1

declare dso_local i32 @complete_type(%struct.TYPE_30__*) #1

declare dso_local i64 @type_sizeof(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_30__* @type_ptr(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
