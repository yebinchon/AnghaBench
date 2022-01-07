; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_policy_condition_is_valid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_policy_condition_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_policy_condition_addr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.necp_policy_condition_addr_range = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@NECP_POLICY_RESULT_SOCKET_DIVERT = common dso_local global i64 0, align 8
@NECP_POLICY_RESULT_SOCKET_FILTER = common dso_local global i64 0, align 8
@NECP_POLICY_RESULT_TRIGGER = common dso_local global i64 0, align 8
@NECP_POLICY_RESULT_TRIGGER_IF_NEEDED = common dso_local global i64 0, align 8
@NECP_POLICY_RESULT_TRIGGER_SCOPED = common dso_local global i64 0, align 8
@NECP_POLICY_RESULT_NO_TRIGGER_SCOPED = common dso_local global i64 0, align 8
@NECP_POLICY_RESULT_SOCKET_SCOPED = common dso_local global i64 0, align 8
@NECP_POLICY_RESULT_ROUTE_RULES = common dso_local global i64 0, align 8
@NECP_POLICY_RESULT_USE_NETAGENT = common dso_local global i64 0, align 8
@NECP_POLICY_RESULT_NETAGENT_SCOPED = common dso_local global i64 0, align 8
@NECP_POLICY_RESULT_SCOPED_DIRECT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@NECP_POLICY_CONDITION_FLAGS_NEGATIVE = common dso_local global i64 0, align 8
@necp_debug = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Policy condition type %d, valid %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i64)* @necp_policy_condition_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_policy_condition_is_valid(i64* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @NECP_POLICY_RESULT_SOCKET_DIVERT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %57, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @NECP_POLICY_RESULT_SOCKET_FILTER, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %57, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @NECP_POLICY_RESULT_TRIGGER, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %57, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @NECP_POLICY_RESULT_TRIGGER_IF_NEEDED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %57, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @NECP_POLICY_RESULT_TRIGGER_SCOPED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %57, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @NECP_POLICY_RESULT_NO_TRIGGER_SCOPED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %57, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @NECP_POLICY_RESULT_SOCKET_SCOPED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %57, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @NECP_POLICY_RESULT_ROUTE_RULES, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @NECP_POLICY_RESULT_USE_NETAGENT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @NECP_POLICY_RESULT_NETAGENT_SCOPED, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @NECP_POLICY_RESULT_SCOPED_DIRECT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53, %49, %45, %41, %37, %33, %29, %25, %21, %17, %3
  %58 = load i32, i32* @TRUE, align 4
  br label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @FALSE, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* %8, align 4
  %63 = load i64*, i64** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @necp_policy_condition_get_value_length_from_buffer(i64* %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i64*, i64** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i64* @necp_policy_condition_get_value_pointer_from_buffer(i64* %66, i32 %67)
  store i64* %68, i64** %10, align 8
  %69 = load i64*, i64** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @necp_policy_condition_get_type_from_buffer(i64* %69, i32 %70)
  store i64 %71, i64* %11, align 8
  %72 = load i64*, i64** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i64 @necp_policy_condition_get_flags_from_buffer(i64* %72, i32 %73)
  store i64 %74, i64* %12, align 8
  %75 = load i64, i64* %11, align 8
  switch i64 %75, label %202 [
    i64 141, label %76
    i64 132, label %76
    i64 138, label %95
    i64 144, label %95
    i64 140, label %95
    i64 129, label %101
    i64 139, label %108
    i64 142, label %108
    i64 137, label %108
    i64 136, label %116
    i64 133, label %123
    i64 128, label %139
    i64 135, label %146
    i64 131, label %146
    i64 134, label %164
    i64 130, label %164
    i64 143, label %190
  ]

76:                                               ; preds = %61, %61
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* @NECP_POLICY_CONDITION_FLAGS_NEGATIVE, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %94, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp uge i64 %83, 4
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i64*, i64** %10, align 8
  %87 = icmp ne i64* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i64*, i64** %10, align 8
  %90 = call i32 @uuid_is_null(i64* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @TRUE, align 4
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %92, %88, %85, %81, %76
  br label %204

95:                                               ; preds = %61, %61, %61
  %96 = load i32, i32* %9, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* @TRUE, align 4
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %98, %95
  br label %204

101:                                              ; preds = %61
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp uge i64 %103, 4
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* @TRUE, align 4
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %105, %101
  br label %204

108:                                              ; preds = %61, %61, %61
  %109 = load i64, i64* %12, align 8
  %110 = load i64, i64* @NECP_POLICY_CONDITION_FLAGS_NEGATIVE, align 8
  %111 = and i64 %109, %110
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* @TRUE, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %113, %108
  br label %204

116:                                              ; preds = %61
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = icmp uge i64 %118, 4
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32, i32* @TRUE, align 4
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %120, %116
  br label %204

123:                                              ; preds = %61
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = icmp uge i64 %125, 4
  br i1 %126, label %127, label %138

127:                                              ; preds = %123
  %128 = load i64*, i64** %10, align 8
  %129 = icmp ne i64* %128, null
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = load i64*, i64** %10, align 8
  %132 = bitcast i64* %131 to i8*
  %133 = bitcast i8* %132 to i32*
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i32, i32* @TRUE, align 4
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %136, %130, %127, %123
  br label %204

139:                                              ; preds = %61
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = icmp uge i64 %141, 4
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* @TRUE, align 4
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %143, %139
  br label %204

146:                                              ; preds = %61, %61
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %163, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = icmp uge i64 %151, 4
  br i1 %152, label %153, label %163

153:                                              ; preds = %149
  %154 = load i64*, i64** %10, align 8
  %155 = bitcast i64* %154 to i8*
  %156 = bitcast i8* %155 to %struct.necp_policy_condition_addr*
  %157 = getelementptr inbounds %struct.necp_policy_condition_addr, %struct.necp_policy_condition_addr* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = call i32 @necp_address_is_valid(i32* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %153
  %162 = load i32, i32* @TRUE, align 4
  store i32 %162, i32* %7, align 4
  br label %163

163:                                              ; preds = %161, %153, %149, %146
  br label %204

164:                                              ; preds = %61, %61
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %189, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = icmp uge i64 %169, 8
  br i1 %170, label %171, label %189

171:                                              ; preds = %167
  %172 = load i64*, i64** %10, align 8
  %173 = bitcast i64* %172 to i8*
  %174 = bitcast i8* %173 to %struct.necp_policy_condition_addr_range*
  %175 = getelementptr inbounds %struct.necp_policy_condition_addr_range, %struct.necp_policy_condition_addr_range* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = call i32 @necp_address_is_valid(i32* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %171
  %180 = load i64*, i64** %10, align 8
  %181 = bitcast i64* %180 to i8*
  %182 = bitcast i8* %181 to %struct.necp_policy_condition_addr_range*
  %183 = getelementptr inbounds %struct.necp_policy_condition_addr_range, %struct.necp_policy_condition_addr_range* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = call i32 @necp_address_is_valid(i32* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %179
  %188 = load i32, i32* @TRUE, align 4
  store i32 %188, i32* %7, align 4
  br label %189

189:                                              ; preds = %187, %179, %171, %167, %164
  br label %204

190:                                              ; preds = %61
  %191 = load i64, i64* %12, align 8
  %192 = load i64, i64* @NECP_POLICY_CONDITION_FLAGS_NEGATIVE, align 8
  %193 = and i64 %191, %192
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %190
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = icmp uge i64 %197, 4
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = load i32, i32* @TRUE, align 4
  store i32 %200, i32* %7, align 4
  br label %201

201:                                              ; preds = %199, %195, %190
  br label %204

202:                                              ; preds = %61
  %203 = load i32, i32* @FALSE, align 4
  store i32 %203, i32* %7, align 4
  br label %204

204:                                              ; preds = %202, %201, %189, %163, %145, %138, %122, %115, %107, %100, %94
  %205 = load i64, i64* @necp_debug, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %204
  %208 = load i32, i32* @LOG_DEBUG, align 4
  %209 = load i64, i64* %11, align 8
  %210 = load i32, i32* %7, align 4
  %211 = call i32 @NECPLOG(i32 %208, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %209, i32 %210)
  br label %212

212:                                              ; preds = %207, %204
  %213 = load i32, i32* %7, align 4
  ret i32 %213
}

declare dso_local i32 @necp_policy_condition_get_value_length_from_buffer(i64*, i32) #1

declare dso_local i64* @necp_policy_condition_get_value_pointer_from_buffer(i64*, i32) #1

declare dso_local i64 @necp_policy_condition_get_type_from_buffer(i64*, i32) #1

declare dso_local i64 @necp_policy_condition_get_flags_from_buffer(i64*, i32) #1

declare dso_local i32 @uuid_is_null(i64*) #1

declare dso_local i32 @necp_address_is_valid(i32*) #1

declare dso_local i32 @NECPLOG(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
